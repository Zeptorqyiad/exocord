<?php
/** @var array $data */

$email = Simflex\Core\Core::siteParam('email');
$phone = Simflex\Core\Core::siteParam('phone');
$vk = Simflex\Core\Core::siteParam('vk');
$tg = Simflex\Core\Core::siteParam('tg');
?>

<section class="banner">
    <div class="banner__container wrapper">
        <div class="banner__content">
            <div class="banner__ls">
                <div class="banner__inner">
                    <div class="banner__inner-head">
                        <?php if ($data['title']): ?>
                            <h1 class="banner__inner-head--title">
                                <span class="accent-title">
                                    <?= $data['accent-title'] ?>
                                </span>
                                <?= $data['title'] ?>
                            </h1>
                        <?php endif; ?>
                        <?php if ($data['description']): ?>
                            <div class="banner__inner-head--description">
                                <?= $data['description'] ?>
                            </div>
                        <?php endif; ?>
                    </div>

                    <?php if ($data['text']): ?>
                        <div class="banner__inner-text">
                            <?= $data['text'] ?>
                        </div>
                    <?php endif; ?>

                    <div class="banner__inner-links">
                        <div class="banner__inner-links--top">
                            <?php
                                App\Layout\Components\UI\Core\Buttons\Button\Layout::drawButton(
                                    text: 'Получить консультацию',
                                    attributes: [
                                        'onclick' => 'modalManager.open("callback-modal");',
                                    ]
                                );
                                App\Layout\Components\UI\Core\Buttons\Button\Layout::drawButton(
                                    text: 'Узнать стоимость',
                                    link: '#priceBlock',
                                    icon: 'arrow-down',
                                    style: \App\Layout\Components\UI\Core\Buttons\Button\ButtonStyle::Secondary,
                                    iconPos: \App\Layout\Components\UI\Core\Buttons\Button\ButtonIconPos::Right,
                                );
                            ?>
                        </div>
                        <div class="banner__inner-links--bottom">
                            <?php
                                if ($vk) {
                                    App\Layout\Components\UI\Core\Social\Layout::draw([
                                        'className' => 'header__contacts--link gray',
                                        'vk' => true,
                                    ]);
                                }
                                if ($tg) {
                                    App\Layout\Components\UI\Core\Social\Layout::draw([
                                        'className' => 'header__contacts--link gray',
                                        'tg' => true,
                                    ]);
                                }
                                if ($phone) {
                                    App\Layout\Components\UI\Core\Buttons\Button\Layout::drawButton(
                                        className: 'orange-color',
                                        text: '{phone}',
                                        link: 'tel:{phone}',
                                        style: \App\Layout\Components\UI\Core\Buttons\Button\ButtonStyle::Secondary,
                                    );
                                }
                            ?>
                        </div>
                    </div>
                </div>
            </div>
            <div class="banner__rs">
                <?php if ($data['video']): ?>
                    <div class="banner__rs--video">
                        <video class="product-fs__main-image"
                               playsinline
                               muted
                               controls
                               preload="metadata"
                               loading="lazy"
                               autoplay
                               loop
                        >
                            <source src="/uf/files/<?= $data['video'] ?>" type="video/<?= pathinfo($data['video'], PATHINFO_EXTENSION) ?>">
                            Ваш браузер не поддерживает видео.
                        </video>
                    </div>
                <?php endif; ?>
                <div class="banner__rs--cards">
                    <?php
                    $items = $data['items'];
                    for ($i = 0; $i < count($items); $i++) {
                        $item = $items[$i];
                        if ($i == 1) {
                            App\Layout\Components\UI\Other\DoubleCard\Layout::drawDoubleCard(
                                className: 'db-cards__slider',
                                number: $item['number'],
                                textTop: $item['text-top'],
                                textBottom: $item['text-bottom'],
                                textRight: $item['text-right'],
                                style: \App\Layout\Components\UI\Other\DoubleCard\DoubleCardStyle::Orange,
                            );
                        } else {
                            App\Layout\Components\UI\Other\DoubleCard\Layout::drawDoubleCard(
                                className: 'db-cards__slider',
                                number: $item['number'],
                                textTop: $item['text-top'] ,
                                textBottom: $item['text-bottom'],
                                textRight: $item['text-right'],
                            );
                        }
                    }
                    ?>
                </div>
            </div>
        </div>
    </div>
</section>
