<?php
/** @var array $data */

?>

<div class="reviews-slider__slider-wrap">
    <div class="reviews-slider__slider">
        <div class="swiper-wrapper">
            <?php foreach ($data['items'] as $i): ?>
                <div class="swiper-slide">
                    <?php
                    App\Layout\Components\UI\Other\StepsCard\Layout::drawStepsCard(
                        fio: $i['fio'],
                        image: $i['image'],
                        years: $i['years'],
                        diagnos: $i['diagnos'],
                        description: $i['description'],
                        text: $i['text'],
                        textBlockTitle: $i['text-title'],
                        border: \App\Layout\Components\UI\Other\StepsCard\StepsBorder::OrangeLight,
                        attributes: [
                            'data-fio' => $i['fio'],
                            'data-image' => $i['image'],
                            'data-years' => $i['years'],
                            'data-diagnos' => $i['diagnos'],
                            'data-description' => $i['description'],
                            'data-title' => $i['text-title'],
                            'data-que' => $i['text'],
                        ]
                    );
                    ?>
                    <?php if ($i['video']): ?>
                        <video playsinline
                               muted
                               controls
                               preload="metadata"
                               loading="lazy"
                               autoplay
                               loop
                        >
                            <source src="/uf/files/<?= $i['video'] ?>"
                                    type="video/<?= pathinfo($i['video'], PATHINFO_EXTENSION) ?>">
                            Ваш браузер не поддерживает видео.
                        </video>
                    <?php elseif ($i['photo']): ?>
                        <img class="reviews-slider__slider--image" src="<?= $i['photo'] ?>" alt="">
                    <?php endif; ?>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</div>