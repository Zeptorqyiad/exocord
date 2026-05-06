<?php
/** @var array $data */

$vk = Simflex\Core\Core::siteParam('vk');
$tg = Simflex\Core\Core::siteParam('tg');
?>

<div id="callback-modal" class="modal callback-modal" role="dialog" aria-modal="true">
    <div class="callback-modal__container">
        <?php App\Layout\Components\UI\Core\Buttons\ButtonClose\Layout::drawButtonClose(
            className: 'callback-modal__button-close',
            attributes: [
                'onclick' => 'modalManager.close("callback-modal")',
            ]
        ); ?>
        <div class="callback-modal__content">
            <div class="callback-modal__links">
                <?php
                    if ($vk) {
                        App\Layout\Components\UI\Core\Buttons\Button\Layout::drawButton(
                            text: 'Написать Вконтакте',
                            link: '{vk}',
                            icon: 'social-mono-vk',
                            style: \App\Layout\Components\UI\Core\Buttons\Button\ButtonStyle::White,
                        );
                    }
                    if ($tg) {
                        App\Layout\Components\UI\Core\Buttons\Button\Layout::drawButton(
                            text: 'Написать в Telegram',
                            link: '{tg}',
                            icon: 'social-mono-tg',
                            style: \App\Layout\Components\UI\Core\Buttons\Button\ButtonStyle::White,
                        );
                    }
                ?>
            </div>

            <?php
            App\Layout\Components\UI\Core\Separator\Layout::drawSeparator(
                size: \App\Layout\Components\UI\Core\Separator\SeparatorSize::Small,
            );

            App\Layout\Components\UI\Core\Form\Layout::draw(['form_name'=>'Обратная связь']);
            ?>
        </div>
    </div>
</div>