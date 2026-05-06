<?php

namespace App\Extensions\Form\Component;

use Simflex\Core\ComponentBase;
use Simflex\Core\Core;
use Simflex\Core\Time;

class AjaxForm extends ComponentBase
{
    protected array $errors = [];
    protected array $data = [];

    protected function content()
    {
        $from = $_REQUEST['from_uri'] ?? '';
        $fromTitle = $_REQUEST['from_title'] ?? '';
        $formName = $_REQUEST['form_name'] ?? '';
        $formSupport = $_REQUEST['form_support'] ?? '';
        $name = $_REQUEST['name'] ?? '';
        $phone = $_REQUEST['phone'] ?? '';

        if (empty($name) || empty($phone)) {
            $this->errors[] = 'Не заполнены Имя или Номер телефона';
            exit(json_encode(['success' => false, 'errors' => $this->errors], JSON_THROW_ON_ERROR));
        }

        $date = Time::create()->asMySQL();
        $this->data = compact('name', 'phone', 'date', 'from', 'fromTitle', 'formName', 'formSupport');

        exit(json_encode(['success' => $this->sendTelegram() && $this->sendMail(), 'errors' => $this->errors]));
    }

    protected function sendMail()
    {
        $m = new MailAssist(Core::siteParam('form_email'), 'Новая заявка с сайта');

        $html = <<<HTML
<p><b>Сайт: </b> <a href="{$this->data['from']}">{$this->data['fromTitle']}</a></p>
<p></p>
<p><b>Форма: </b> {$this->data['formName']}</p>
HTML;

        if ($this->data['formSupport']) {
            $html .= <<<HTML
<p><b>Сопровождение: </b> {$this->data['formSupport']}</p>
HTML;
        }

        $html .= <<<HTML
<p><b>Имя: </b> {$this->data['name']}</p>
<p><b>Телефон: </b> {$this->data['phone']}</p>
HTML;

        $m->content($html);
        return $m->send();
    }

    protected function sendTelegram()
    {
        $patch = function ($i) {
            return str_replace(
                ['_', '*', '[', ']', '(', ')', '~', '`', '>', '#', '+', '-', '=', '|', '{', '}', '.', '!'],
                [
                    '\\_',
                    '\\*',
                    '\\[',
                    '\\]',
                    '\\(',
                    '\\)',
                    '\\~',
                    '\\`',
                    '\\>',
                    '\\#',
                    '\\+',
                    '\\-',
                    '\\=',
                    '\\|',
                    '\\{',
                    '\\}',
                    '\\.',
                    '\\!'
                ],
                $i
            );
        };

        $md = <<<MD
**НОВАЯ ЗАЯВКА**

**Сайт: ** [{$patch($this->data['fromTitle'])}]({$patch($this->data['from'])})

**Форма: ** {$patch($this->data['formName'])}

MD;

        if ($this->data['formSupport']) {
            $md .= <<<MD
**Сопровождение: ** {$patch($this->data['formSupport'])}

MD;
        }

        $md .= <<<MD
**Имя: ** {$patch($this->data['name'])}
**Телефон: ** {$patch($this->data['phone'])}
MD;

        $ch = curl_init();

        curl_setopt(
            $ch,
            CURLOPT_URL,
            'https://api.telegram.org/bot' . Core::siteParam('form_tg_token') . '/sendMessage'
        );
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query([
            'chat_id' => Core::siteParam('form_tg_chat_id'),
            'parse_mode' => 'MarkdownV2',
            'text' => $md
        ]));

        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_exec($ch);
        return true;
    }
}