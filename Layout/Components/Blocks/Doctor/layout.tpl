<?php
/** @var array $data */

?>

<section class="doctor" id="doctor">
    <div class="doctor__container wrapper">
        <?php if ($data['title'] || $data['accent-title']): ?>
            <div class="doctor__head">
                <h2 class="doctor__title title">
                    <?= $data['title'] ?>

                    <span class="accent-title">
                        <?= $data['accent-title'] ?>
                    </span>
                </h2>
            </div>
        <?php endif; ?>
        <div class="doctor__content">
            <div class="doctor__content--ls">
                <?php
                    if ($data['card-text_1'] || $data['card-title_1']) {
                        App\Layout\Components\UI\Other\CardText\Layout::drawCardText(
                            className: 'blue-title',
                            title: $data['card-title_1'],
                            text: $data['card-text_1'],
                            border: \App\Layout\Components\UI\Other\CardText\CardTextBorder::Blue,
                        );
                    }
                    if ($data['card-text_2'] || $data['card-title_2']) {
                        App\Layout\Components\UI\Other\CardText\Layout::drawCardText(
                            className: 'blue-title',
                            title: $data['card-title_2'],
                            text: $data['card-text_2'],
                        );
                    }
                ?>
            </div>
            <div class="doctor__content--rs">
                <?php if ($data['video']): ?>
                    <div class="doctor__content--rs-media">
                        <video class="product-fs__main-image"
                               playsinline
                               muted
                               controls
                               preload="metadata"
                               loading="lazy"
                               autoplay
                        >
                            <source src="/uf/files/<?= $data['video'] ?>" type="video/<?= pathinfo($data['video'], PATHINFO_EXTENSION) ?>">
                            Ваш браузер не поддерживает видео.
                        </video>
                    </div>
                <?php endif; ?>
                <div class="doctor__content--rs-text-block">
                    <?php
                        if ($data['ellipse-text']) {
                            App\Layout\Components\UI\Other\CardEllipse\Layout::drawCardEllipse(
                                text: $data['ellipse-text'],
                                color: \App\Layout\Components\UI\Other\CardEllipse\CardEllipseColor::Orange,
                            );
                        }
                        if ($data['card-title_3'] || $data['card-text_3']) {
                            App\Layout\Components\UI\Other\CardText\Layout::drawCardText(
                                title: $data['card-title_3'] ?? '',
                                text: $data['card-text_3'] ?? '',
                                border: \App\Layout\Components\UI\Other\CardText\CardTextBorder::Lighter,
                            );
                        }
                    ?>
                </div>
            </div>
        </div>
        <?php if ($data['footer-text'] || $data['footer-accent-text']): ?>
            <div class="doctor__footer title">
                <?= $data['footer-text'] ?>
                <span class="accent-title">
                    <?= $data['footer-accent-text'] ?>
                </span>
            </div>
        <?php endif; ?>
    </div>
</section>
<div class="wrapper">
    <?php
    App\Layout\Components\UI\Core\Separator\Layout::drawSeparator();
    ?>
</div>