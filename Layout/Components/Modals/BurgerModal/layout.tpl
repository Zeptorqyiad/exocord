<?php
/** @var array $data */

$email = Simflex\Core\Core::siteParam('email');
$phone = Simflex\Core\Core::siteParam('phone');
$vk = Simflex\Core\Core::siteParam('vk');
$tg = Simflex\Core\Core::siteParam('tg');

?>


<div id="burger-modal" class="modal burger-modal" role="dialog" aria-modal="true">
    <div class="burger-modal__container">
        <div class="burger-modal__header">
             <?php
                 App\Layout\Components\Common\Logo\Layout::draw();
                 App\Layout\Components\UI\Core\Buttons\ButtonClose\Layout::drawButtonClose(
                     className: 'burger-modal__button-close',
                     attributes: [
                         'onclick' => 'modalManager.close("burger-modal")',
                     ]
                 );
             ?>
        </div>
        <div class="burger-modal__wrapper">
            <div class="burger-modal__links">
                <a href="#steps" class="header__nav--link burger-modal__link"><span>Программа реабилитации</span></a>
                <?php
                    App\Layout\Components\UI\Core\Separator\Layout::drawSeparator();
                ?>
                <a href="#howWorks" class="header__nav--link burger-modal__link"><span>Как работает костюм</span></a>
                <?php
                    App\Layout\Components\UI\Core\Separator\Layout::drawSeparator();
                ?>
                <a href="#priceBlock" class="header__nav--link burger-modal__link"><span>Цены</span></a>
                <?php
                    App\Layout\Components\UI\Core\Separator\Layout::drawSeparator();
                ?>
                <a href="/blog/" class="header__nav--link burger-modal__link"><span>Блог</span></a>
                <?php
                    App\Layout\Components\UI\Core\Separator\Layout::drawSeparator();
                ?>
                <a href="#contacts" class="header__nav--link burger-modal__link"><span>Контакты</span></a>
                <?php
                    App\Layout\Components\UI\Core\Separator\Layout::drawSeparator();
                ?>
            </div>
            <div class="burger-modal__btns">
                <?php
                    App\Layout\Components\UI\Core\Buttons\Button\Layout::drawButton(
                        className: 'header__contacts--button',
                        text: 'Связаться',
                        attributes: [
                            'onclick' => 'modalManager.open("callback-modal");',
                        ]
                    );
                    if ($phone) {
                        App\Layout\Components\UI\Core\Buttons\Button\Layout::drawButton(
                            text:'{phone}',
                            link: 'tel:{phone}',
                            style: \App\Layout\Components\UI\Core\Buttons\Button\ButtonStyle::White,
                        );
                    }
                    if ($email) {
                        App\Layout\Components\UI\Core\Buttons\Button\Layout::drawButton(
                            text:'{email}',
                            link: 'mailto:{email}',
                            style: \App\Layout\Components\UI\Core\Buttons\Button\ButtonStyle::White,
                        );
                    }
                ?>

                <div class="burger-modal__btns--socials">
                    <?php
                        if ($vk) {
                            App\Layout\Components\UI\Core\Social\Layout::draw([
                                'vk' => true,
                            ]);
                        }
                        if ($tg) {
                            App\Layout\Components\UI\Core\Social\Layout::draw([
                                'tg' => true,
                            ]);
                        }
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>