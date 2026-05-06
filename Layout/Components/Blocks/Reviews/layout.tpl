<?php
/** @var array $data */

?>

<section class="reviews">
    <div class="reviews__container wrapper">
        <?php if ($data['title'] || $data['accent-title']): ?>
            <h2 class="reviews__title title">
                <?= $data['title'] ?>

                <span class="accent-title">
                    <?= $data['accent-title'] ?>
                </span>
            </h2>
        <?php endif; ?>

        <?php if ($data['items']): ?>
            <div class="reviews__btn reviews-slider__buttons">
                <?php
                    App\Layout\Components\UI\Core\Buttons\Button\Layout::drawButton(
                        className: 'reviews-slider__button-prev',
                        icon: 'arrow-left',
                        style: \App\Layout\Components\UI\Core\Buttons\Button\ButtonStyle::Secondary
                    );
                    App\Layout\Components\UI\Core\Buttons\Button\Layout::drawButton(
                        className: 'reviews-slider__button-next',
                        icon: 'arrow-right',
                        style: \App\Layout\Components\UI\Core\Buttons\Button\ButtonStyle::Secondary
                    );
                ?>
            </div>
        <?php endif; ?>
        <div class="reviews__content">
            <?php
                App\Layout\Components\Common\SliderSections\ReviewsSlider\Layout::draw([
                    'items' => $data['items']
                ]);
            ?>
        </div>
    </div>
</section>
