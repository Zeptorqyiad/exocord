<?php
/** @var array $data */

$email = Simflex\Core\Core::siteParam('email');
$phone = Simflex\Core\Core::siteParam('phone');
$vk = Simflex\Core\Core::siteParam('vk');
$tg = Simflex\Core\Core::siteParam('tg');
?>

<footer class="footer" id="footer">
    <div class="footer__container wrapper">
        <div class="footer__content">
            <div class="footer__wrapper">
                <div class="footer__wrapper--logo">
                    <img src="/assets/icons/footerLogo.svg" alt="">
                </div>
                <div class="footer__wrapper--shares">
                    <?php if ($phone): ?>
                    <div class="footer__tel">
                        <p>Телефон для связи</p>
                        <?php
                            App\Layout\Components\UI\Core\Buttons\Button\Layout::drawButton(
                                text: '{phone}',
                                link: 'tel:{phone}',
                                style: \App\Layout\Components\UI\Core\Buttons\Button\ButtonStyle::White,
                            );
                        ?>
                    </div>
                    <?php endif; ?>
                    <?php if ($email): ?>
                    <div class="footer__email">
                        <p>Электронная почта</p>
                        <?php
                            App\Layout\Components\UI\Core\Buttons\Button\Layout::drawButton(
                                text: '{email}',
                                link: 'mailto:{email}',
                                style: \App\Layout\Components\UI\Core\Buttons\Button\ButtonStyle::White,
                            );
                        ?>
                    </div>
                    <?php endif; ?>
                </div>
                <div class="footer__wrapper--socials">
                    <p>Соц.сети и мессенджеры:</p>
                    <div class="footer__social">
                        <?php
                            if ($vk) {
                                App\Layout\Components\UI\Core\Social\Layout::draw([
                                    'className' => 'header__contacts--link',
                                    'vk' => true,
                                ]);
                            }
                            if ($tg) {
                                App\Layout\Components\UI\Core\Social\Layout::draw([
                                    'className' => 'header__contacts--link',
                                    'tg' => true,
                                ]);
                            }
                        ?>
                    </div>
                </div>
            </div>
            <div class="footer__links">
                <nav class="footer__links--nav">
                    <a href="https://exocord.ru/#steps" class="footer__links--link"><span>Программа реабилитации</span></a>
                    <a href="https://exocord.ru/#howWorks" class="footer__links--link"><span>Как работает костюм</span></a>
                    <a href="https://exocord.ru/#priceBlock" class="footer__links--link"><span>Цены</span></a>
                    <a href="https://exocord.ru/blog/" class="footer__links--link"><span>Блог</span></a>
                </nav>
                <?php
                    App\Layout\Components\UI\Core\Buttons\Button\Layout::drawButton(
                        text: 'Обратная связь',
                        style: \App\Layout\Components\UI\Core\Buttons\Button\ButtonStyle::White,
                        attributes: [
                            'onclick' => 'modalManager.open("callback-modal")',
                        ]
                    );
                ?>
            </div>
            <?php
                App\Layout\Components\UI\Core\Separator\Layout::drawSeparator(
                    theme: \App\Layout\Components\UI\Core\Separator\SeparatorTheme::Dark,
                );
            ?>
            <div class="footer__end">
                <div class="footer__end--ls">
                    <span>@ ExoCord 2025</span>
                    <span>*не является медицинским изделием</span>
                    <a href="/policy/">Политика обработки персональных данных</a>
                </div>
                <div class="footer__end--rs">
                    <a target="_blank" href="https://growtask.ru/" >
                        <img src="/assets/images/made-in.webp" alt="Сайт сделан студией Гротеск" draggable="false">
                    </a>
                    <a target="_blank" href="https://simflexcms.ru/">
                        <img src="/assets/images/made-by.webp" alt="Ядро сайта SimflexCMS">
                    </a>
                </div>
            </div>
            <?php
                App\Layout\Components\UI\Core\Buttons\Button\Layout::drawButton(
                    className: 'footer__up',
                    icon: 'arrow-up',
                );
            ?>
        </div>
    </div>
</footer>