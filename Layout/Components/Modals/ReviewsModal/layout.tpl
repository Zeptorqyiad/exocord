<?php
/** @var array $data */

?>

<div id="reviews-modal" class="modal reviews-modal" role="dialog" aria-modal="true">
    <div class="reviews-modal__container">
        <?php App\Layout\Components\UI\Core\Buttons\ButtonClose\Layout::drawButtonClose(
            className: 'reviews-modal__button-close',
            attributes: [
                'onclick' => 'modalManager.close("reviews-modal")',
            ]
        ); ?>
        <div class="reviews-modal__content">
            <div class="reviews-modal__image"></div>
            <div class="reviews-modal__info">
                <div class="reviews-modal__fio"></div>
                <div class="reviews-modal__years"></div>
            </div>
            <div class="reviews-modal__diagnos"></div>

            <div class="reviews-modal__text"></div>

            <div class="reviews-modal__block">
                <div class="reviews-modal__title"></div>
                <div class="reviews-modal__que"></div>
            </div>
        </div>
    </div>
</div>