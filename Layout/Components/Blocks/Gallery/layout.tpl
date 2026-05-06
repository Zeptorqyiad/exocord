<?php
/** @var array $data */

?>

<section class="gallery">
    <div class="gallery__container wrapper">
        <div class="gallery__head">
            <h2 class="gallery__title title">
                <?= $data['title'] ?>
            </h2>
        </div>
        <div class="gallery__content">
            <div class="gallery__column">
                <?php foreach ($data['items-left'] as $index => $item):
                    $borders = [
                        null,
                        null,
                        \App\Layout\Components\UI\Other\Picture\PictureBorder::Blue,
                    ];
                    ?>
                    <?php
                        App\Layout\Components\UI\Other\Picture\Layout::drawPicture(
                            image: $item['image'],
                            border: $borders[$index] ?? \App\Layout\Components\UI\Other\Picture\PictureBorder::Outline,
                        )
                    ?>
                <?php endforeach; ?>
            </div>
            <div class="gallery__column">
                <?php foreach ($data['items-center'] as $i): ?>
                    <?php
                        App\Layout\Components\UI\Other\Picture\Layout::drawPicture(
                            image: $i['image'],
                        );
                    ?>
                <?php endforeach; ?>
            </div>
            <div class="gallery__column">
                <?php foreach ($data['items-right'] as $index => $item):
                    $borders = [
                        \App\Layout\Components\UI\Other\Picture\PictureBorder::Orange,
                        \App\Layout\Components\UI\Other\Picture\PictureBorder::Outline,
                    ];
                    ?>
                    <?php
                    App\Layout\Components\UI\Other\Picture\Layout::drawPicture(
                        image: $item['image'],
                        border: $borders[$index],
                    )
                    ?>
                <?php endforeach; ?>
            </div>
        </div>
    </div>
</section>