<?php
/** @var array $data */

$cleanPricePlus = preg_replace('/[^0-9]/', '', $data['price-plus']);

$sizes = [
    [
        'size' => 'XS',
    ],[
        'size' => 'S',
    ],[
        'size' => 'M',
    ],[
        'size' => 'L',
    ],
]
?>

<section class="price-block" id="priceBlock">
    <div class="price-block__container wrapper">
        <div class="price-block__content">
            <div class="price-block__content--ls">
                <?php
                    App\Layout\Components\Common\SliderSections\ProductSlider\Layout::draw([
                        'images' => $data['images'],
                    ]);
                ?>
            </div>
            <div class="price-block__content--rs">
                <?php if ($data['title'] || $data['accent-title'] || $data['after-title']): ?>
                    <h1 class="price-block-head__title title">
                        <?= $data['title'] ?>
                        <span class="accent-title">
                            <?= $data['accent-title'] ?>
                        </span>
                        <?= $data['after-title'] ?>
                    </h1>
                <?php endif; ?>
                <?php if ($data['text']): ?>
                    <div class="price-block-head__text">
                         <?= $data['text'] ?>
                    </div>
                <?php endif; ?>

                <div class="price-block__calculation">
                    <div class="price-block__head">
                        <h3 class="price-block__head--title">
                            <?= $data['calc-head_title'] ?>
                        </h3>
                        <?php
                            if ($data['calc-head_badge']) {
                                App\Layout\Components\UI\Core\Badge\Layout::drawBadge(
                                    text: $data['calc-head_badge'],
                                    style: \App\Layout\Components\UI\Core\Badge\BadgeStyle::AccentLight,
                                    size: \App\Layout\Components\UI\Core\Badge\BadgeSize::Medium,
                                );
                            }
                        ?>
                    </div>
                    <div class="price-block__badges">
                        <?php
                            $styles = [
                                \App\Layout\Components\UI\Core\Badge\BadgeStyle::OrangeLighter,
                                \App\Layout\Components\UI\Core\Badge\BadgeStyle::BlueLighter,
                            ];

                            foreach ($data['badges'] as $index => $item) {
                                App\Layout\Components\UI\Core\Badge\Layout::drawBadge(
                                    text: $item['text'] ?? '',
                                    style: $styles[$index],
                                    size: \App\Layout\Components\UI\Core\Badge\BadgeSize::Medium,
                                );
                            }
                        ?>
                    </div>

                    <?php if ($data['description']): ?>
                        <div class="price-block__text">
                            <?= $data['description'] ?>
                        </div>
                    <?php endif; ?>
                    <div class="price-block__size">
                        <h4 class="price-block__size--title">
                            Размер костюма
                        </h4>

                        <div class="price-block__size--tabs">
                            <?php foreach ($sizes as $i): ?>
                                <?php
                                    App\Layout\Components\UI\Core\Tab\Layout::drawTab(
                                        text: $i['size'],
                                        style: \App\Layout\Components\UI\Core\Tab\TabStyle::Gray,
                                    );
                                ?>
                            <?php endforeach; ?>
                        </div>

                        <?php
                            App\Layout\Components\UI\Core\Link\Layout::drawLink(
                                text: 'Как выбрать размер?',
                                attributes: [
                                    'onclick' => 'modalManager.open("size-modal");'
                                ]
                            );
                        ?>
                    </div>
                    <div class="price-block__support">
                        <h4 class="price-block__support--title">
                            Сопровождение
                        </h4>
                        <div class="price-block__support--toggle">
                            <?php
                                App\Layout\Components\UI\Core\ToggleSwitch\Layout::drawToggle(
                                    text: 'Добавить сопровождение ' . $data['price-plus'],
                                    size: \App\Layout\Components\UI\Core\ToggleSwitch\ToggleSize::Small,
                                );
                            ?>
                        </div>
                        <script>
                            window.pricePlus = parseInt('<?= $cleanPricePlus ?>', 10);
                        </script>
                        <div class="price-block__support--badges">
                            <?php
                                App\Layout\Components\UI\Core\Buttons\Button\Layout::drawButton(
                                    text: 'Записаться на сопровождение',
                                    style: \App\Layout\Components\UI\Core\Buttons\Button\ButtonStyle::Gray,
                                    attributes: [
                                        'onclick' => 'modalManager.open("support-modal")',
                                    ]
                                );

                                App\Layout\Components\UI\Core\Buttons\Button\Layout::drawButton(
                                    text: 'Подробнее о сопровождении',
                                    style: \App\Layout\Components\UI\Core\Buttons\Button\ButtonStyle::OutlineGray,
                                    attributes: [
                                        'onclick' => 'modalManager.open("support-modal")',
                                    ]
                                );
                            ?>
                        </div>
                    </div>
                    <?php if ($data['text-bottom']): ?>
                        <div class="price-block__text">
                            <?= $data['text-bottom'] ?>
                        </div>
                    <?php endif; ?>
                    <?php if ($data['price-final']): ?>
                    <div class="price-block__footer">
                        <div class="price-block__price">
                            <div class="price-block__price--value">
                                <h2 class="price-block__price--final">
                                    <?= $data['price-final'] ?>
                                </h2>
                                <?php if ($data['price-through']): ?>
                                    <span class="price-block__price--through">
                                        <?= $data['price-through'] ?>
                                    </span>
                                <?php endif; ?>
                            </div>
                            <?php if ($data['price-descr']): ?>
                                <div class="price-block__price--descr">
                                    <?= $data['price-descr'] ?>
                                </div>
                            <?php endif; ?>
                        </div>
                        <?php if ($data['definition']): ?>
                            <div class="price-block__definition">
                                <?= $data['definition'] ?>
                            </div>
                        <?php endif; ?>
                    </div>
                    <?php endif; ?>
                </div>

                <div class="price-block__consultation">
                    <?php if ($data['consultation']): ?>
                        <h4 class="price-block__consultation--title">
                            <?= $data['consultation'] ?>
                        </h4>
                    <?php endif; ?>

                    <?php
                        App\Layout\Components\UI\Core\Buttons\Button\Layout::drawButton(
                            text: 'Получить консультацию',
                            attributes: [
                                'onclick' => 'cbClickGetConsult()',
                            ]
                        );
                    ?>
                </div>
            </div>
        </div>
    </div>
</section>
<div class="wrapper">
    <?php
    App\Layout\Components\UI\Core\Separator\Layout::drawSeparator();
    ?>
</div>