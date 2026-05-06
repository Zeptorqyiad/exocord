<?php
/** @var array $data */

?>

<section class="how-works" id="howWorks">
    <div class="how-works__container wrapper">
        <div class="how-works__wrapper">
            <?php if ($data['title'] || $data['accent-title']): ?>
                <h2 class="how-works__title title">
                    <?= $data['title'] ?>

                    <span class="accent-title">
                        <?= $data['accent-title'] ?>
                    </span>
                </h2>
            <?php endif; ?>
        </div>
        <div class="how-works__content">
            <div class="how-works__items">
                <?php
                $item_settings = [
                    [
                        'marker' => true,
                        'icon' => 'arrow-down',
                        'border_text' => \App\Layout\Components\UI\Other\CardText\CardTextBorder::Blue,
                        'border_picture' => \App\Layout\Components\UI\Other\Picture\PictureBorder::Blue,
                        'rs_class' => ''
                    ],
                    [
                        'marker' => true,
                        'icon' => 'arrow-down',
                        'markerColor' => \App\Layout\Components\UI\Other\CardText\CardMarker::Orange,
                        'border_text' => \App\Layout\Components\UI\Other\CardText\CardTextBorder::Lighter,
                        'border_picture' => \App\Layout\Components\UI\Other\Picture\PictureBorder::Orange,
                        'rs_class' => 'second'
                    ],
                    [
                        'marker' => true,
                        'icon' => 'arrow-down',
                        'border_text' => \App\Layout\Components\UI\Other\CardText\CardTextBorder::Blue,
                        'border_picture' => \App\Layout\Components\UI\Other\Picture\PictureBorder::Blue,
                        'rs_class' => 'third'
                    ]
                ];

                foreach ($data['items'] as $index => $item):
                    $settings = $item_settings[$index];
                    ?>
                    <div class="how-works__item">
                        <div class="how-works__item--ls">
                            <?php
                            App\Layout\Components\UI\Other\CardText\Layout::drawCardText(
                                title: $item['card-title-1'],
                                text: $item['card-text-1'],
                                marker: $settings['marker'],
                                icon: $settings['icon'],
                                markerColor: $settings['markerColor'] ?? \App\Layout\Components\UI\Other\CardText\CardMarker::Blue,
                            );
                            App\Layout\Components\UI\Other\CardText\Layout::drawCardText(
                                title: $item['card-title-2'],
                                text: $item['card-text-2'],
                                border: $settings['border_text'],
                            );
                            ?>
                        </div>
                        <?php if ($item['image']): ?>
                            <div class="how-works__item--rs <?php echo $settings['rs_class']; ?>">
                                <?php
                                App\Layout\Components\UI\Other\Picture\Layout::drawPicture(
                                    image: $item['image'],
                                    border: $settings['border_picture'],
                                );
                                ?>
                            </div>
                        <?php elseif ($item['video']): ?>
                            <div class="how-works__item--rs <?php echo $settings['rs_class']; ?>">
                                <video
                                        playsinline
                                        muted
                                        preload="metadata"
                                        loading="lazy"
                                        autoplay
                                        loop
                                >
                                    <source src="/uf/files/<?= $item['video'] ?>"
                                            type="video/<?= pathinfo($item['video'], PATHINFO_EXTENSION) ?>">
                                    Ваш браузер не поддерживает видео.
                                </video>
                            </div>
                        <?php endif; ?>
                    </div>
                <?php endforeach; ?>
            </div>

            <?php if ($data['sticky-title'] || $data['video'] || $data['sticky-text']): ?>
                <div class="how-works__sticky">
                    <div class="how-works__sticky-head">
                        <h3 class="how-works__sticky-head--title">
                            <?= $data['sticky-title'] ?>
                        </h3>
                    </div>

                    <div class="how-works__sticky-block">
                        <h3 class="how-works__sticky-head--title">
                            <?= $data['sticky-title'] ?>
                        </h3>
                        <?php if ($data['video']): ?>
                            <div class="how-works__sticky-block--video">
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
                        <div class="how-works__sticky-block--text">
                            <?= $data['sticky-text']?>
                        </div>
                    </div>
                </div>
            <?php endif; ?>
        </div>
    </div>
</section>
<div class="wrapper">
    <?php
        App\Layout\Components\UI\Core\Separator\Layout::drawSeparator();
    ?>
</div>
