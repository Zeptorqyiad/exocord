<div id="success-modal" class="modal success-modal" role="dialog" aria-modal="true">
    <div class="success-modal__container">
        <?php App\Layout\Components\UI\Core\Buttons\ButtonClose\Layout::drawButtonClose(
            className: 'success-modal__button-close',
            attributes: [
                'onclick' => 'modalManager.close("success-modal")',
            ]
        ); ?>
        <div class="success-modal__top">
            <div class="success-modal__icon">
                <?= renderIcon('true') ?>
            </div>

            <div class="success-modal__text">
                <h4 class="success-modal__title">Успешно!</h4>
                <p class="success-modal__desc">
                    Ваша заявка успешно отправлена
                </p>
            </div>
        </div>
        <div class="success-modal__body">
            <?php App\Layout\Components\UI\Core\Buttons\Button\Layout::drawButton(
                className: 'success-modal__button w-full',
                text: 'Хорошо',
                attributes: [
                    'onclick' => 'modalManager.close("success-modal")',
                ]
            ); ?>
        </div>
    </div>
</div>