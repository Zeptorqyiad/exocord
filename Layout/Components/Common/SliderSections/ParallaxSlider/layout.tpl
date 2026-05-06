<?php
/** @var array $data */
?>

<div class="production-slider__slider-wrap">
    <div class="production-slider__slider">
        <div class="production-slider__content swiper-wrapper">
            <?php foreach ($data['items'] as $index => $item): ?>
                <div class="swiper-slide">
                    <?php
                    if ($index == 0) {
                        $pictureBorder = \App\Layout\Components\UI\Other\Picture\PictureBorder::Orange;
                        $cardTextBorder = \App\Layout\Components\UI\Other\CardText\CardTextBorder::Lighter;
                    } elseif ($index == 3) {
                        $pictureBorder = \App\Layout\Components\UI\Other\Picture\PictureBorder::Blue;
                        $cardTextBorder = \App\Layout\Components\UI\Other\CardText\CardTextBorder::Outline;
                    } else {
                        $pictureBorder = \App\Layout\Components\UI\Other\Picture\PictureBorder::Outline;
                        $cardTextBorder = \App\Layout\Components\UI\Other\CardText\CardTextBorder::Outline;
                    }
                    $cardEllipsePos = \App\Layout\Components\UI\Other\CardEllipse\CardEllipsePos::Right;
                    $cardEllipseColor = ($index == 4) ? \App\Layout\Components\UI\Other\CardEllipse\CardEllipseColor::Orange : \App\Layout\Components\UI\Other\CardEllipse\CardEllipseColor::Blue;

                    if ($item['video']) {
                        App\Layout\Components\Common\Video\Layout::draw([
                            'video' => $item['video'],
                        ]);
                    } else {
                        App\Layout\Components\UI\Other\Picture\Layout::drawPicture(
                            image: $item['image'],
                            border: $pictureBorder,
                        );
                    }

                    if ($item['title']) {
                        App\Layout\Components\UI\Other\CardText\Layout::drawCardText(
                            title: $item['title'],
                            text: $item['text'],
                            border: $cardTextBorder,
                        );
                    } else {
                        App\Layout\Components\UI\Other\CardEllipse\Layout::drawCardEllipse(
                            text: $item['text'],
                            pos: $cardEllipsePos,
                            color: $cardEllipseColor,
                        );
                    }
                    ?>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</div>