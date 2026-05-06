<?php
/** @var array $data */

$email = Simflex\Core\Core::siteParam('email');
$phone = Simflex\Core\Core::siteParam('phone');
$vk = Simflex\Core\Core::siteParam('vk');
$tg = Simflex\Core\Core::siteParam('tg');

$cleanPricePlus = preg_replace('/[^0-9]/', '', $data['price-final']);
?>

<header class="header" id="header">
    <div class="header__container">
        <div class="header__content">
            <?php
                App\Layout\Components\Common\Logo\Layout::draw([
                    'className' => 'header__content--logo',
                ]);
            ?>
            <nav class="header__nav">
                <a href="https://exocord.ru/#steps" class="header__nav--link"><span>Система восстановления</span></a>
                <a href="https://exocord.ru/#howWorks" class="header__nav--link"><span>Как работает костюм</span></a>
                <a href="https://exocord.ru/#priceBlock" class="header__nav--link"><span>Цены</span></a>
                <a href="https://exocord.ru/blog/" class="header__nav--link"><span>Блог</span></a>
                <a href="https://exocord.ru/#footer" class="header__nav--link"><span>Контакты</span></a>
            </nav>
            <div class="header__contacts">
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
                    if ($phone) {
                        App\Layout\Components\UI\Core\Buttons\Button\Layout::drawButton(
                            className: 'header__contacts--phone',
                            text:'{phone}',
                            link: 'tel:{phone}',
                            style: \App\Layout\Components\UI\Core\Buttons\Button\ButtonStyle::White,
                        );
                    }
                    if ($email) {
                        App\Layout\Components\UI\Core\Buttons\Button\Layout::drawButton(
                            className: 'header__contacts--email',
                            text:'{email}',
                            link: 'mailto:{email}',
                            style: \App\Layout\Components\UI\Core\Buttons\Button\ButtonStyle::White,
                        );
                    }
                    if ($phone) {
                        App\Layout\Components\UI\Core\Buttons\Button\Layout::drawButton(
                            className: 'header__contacts--mob',
                            link: 'tel:{phone}',
                            icon: 'phone',
                            style: \App\Layout\Components\UI\Core\Buttons\Button\ButtonStyle::White,
                        );
                    }
                    if ($email) {
                        App\Layout\Components\UI\Core\Buttons\Button\Layout::drawButton(
                            className: 'header__contacts--mob',
                            link: 'mailto:{email}',
                            icon: 'mail',
                            style: \App\Layout\Components\UI\Core\Buttons\Button\ButtonStyle::White,
                        );
                    }
                    App\Layout\Components\UI\Core\Buttons\Button\Layout::drawButton(
                        className: 'header__contacts--button',
                        text: 'Связаться',
                        attributes: [
                            'onclick' => 'modalManager.open("callback-modal");',
                        ]
                    )
                ?>
            </div>
            <div class="header__burger">
                <?php
                    App\Layout\Components\UI\Core\Buttons\Button\Layout::drawButton(
                        text: 'Меню',
                        icon: 'menu-2-line',
                        style: \App\Layout\Components\UI\Core\Buttons\Button\ButtonStyle::Outline,
                        attributes: [
                            'onclick' => 'modalManager.open("burger-modal");',
                        ]
                    );
                ?>
            </div>
        </div>
    </div>
</header>

<!-------------------- Modals -------------------->

<?php
    if (!Simflex\Core\Container::getRequest()->cookie('cookieConsent')) {
        App\Layout\Components\Modals\CookieModal\Layout::draw();
    }
    App\Layout\Components\Modals\CallbackModal\Layout::draw();
    App\Layout\Components\Modals\SizeModal\Layout::draw([
        'title' => $data['title'],
        'table-title' =>  $data['table-title'],
        'description' =>  $data['description'],
        'recommendation-title' => $data['recommendation-title'],
        'recommendation-text' => $data['recommendation-text'],
    ]);
    App\Layout\Components\Modals\SupportModal\Layout::draw([
        'title' => $data['support-title'],
        'text' => $data['support-text'],
        'description' => $data['support-description'],
        'price' => $cleanPricePlus,
        'price-through' => $data['price-through'],
    ]);
    App\Layout\Components\Modals\ReviewsModal\Layout::draw();
    App\Layout\Components\Modals\BurgerModal\Layout::draw();
    App\Layout\Components\Modals\SuccessModal\Layout::draw();
    App\Layout\Components\Modals\ErrorModal\Layout::draw();
?>

<!-------------------- Main -------------------->