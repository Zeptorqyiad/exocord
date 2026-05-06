<?php
/** @var array $data */

?>

<section class="production">
    <div class="production__container">
        <?php if ($data['title'] || $data['accent-title']): ?>
            <h2 class="production__title title wrapper">
                <?= $data['title'] ?>
                <span class="accent-title">
                    <?= $data['accent-title'] ?>
                </span>
            </h2>
        <?php endif; ?>

        <?php if ($data['items']): ?>
            <div class="production-slider__buttons wrapper">
                <?php
                App\Layout\Components\UI\Core\Buttons\Button\Layout::drawButton(
                    className: 'production-slider__button-prev',
                    icon: 'arrow-left',
                    style: \App\Layout\Components\UI\Core\Buttons\Button\ButtonStyle::White,
                );
                App\Layout\Components\UI\Core\Buttons\Button\Layout::drawButton(
                    className: 'production-slider__button-next',
                    icon: 'arrow-right',
                    style: \App\Layout\Components\UI\Core\Buttons\Button\ButtonStyle::White,
                );
                ?>
            </div>
        <?php endif; ?>

        <div class="production__content">
            <?php
                App\Layout\Components\Common\SliderSections\ParallaxSlider\Layout::draw([
                    'items' => $data['items'],
                ]);
            ?>
        </div>
    </div>
</section>