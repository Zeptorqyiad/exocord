<div id="error-modal" class="modal error-modal" role="dialog" aria-modal="true">
    <div class="error-modal__container">
        <?php App\Layout\Components\UI\Core\Buttons\ButtonClose\Layout::drawButtonClose(
            className: 'error-modal__button-close',
            attributes: [
                'onclick' => 'modalManager.close("error-modal")',
            ]
        ); ?>
        <div class="error-modal__top">
            <div class="error-modal__icon">
                <?= renderIcon('close') ?>
            </div>

            <div class="error-modal__text">
                <h4 class="error-modal__title">Ошибка!</h4>
                <p class="error-modal__desc">
                    Не удалось отправить, повторите позже
                </p>
            </div>
        </div>
        <div class="error-modal__body">
            <?php App\Layout\Components\UI\Core\Buttons\Button\Layout::drawButton(
                className: 'error-modal__button w-full',
                text: 'Хорошо',
                attributes: [
                    'onclick' => 'modalManager.close("error-modal")',
                ]
            ); ?>
        </div>
    </div>
</div>