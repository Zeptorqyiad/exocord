<?php
/** @var array $data */

$vk = Simflex\Core\Core::siteParam('vk');
$tg = Simflex\Core\Core::siteParam('tg');
?>

<div id="support-modal" class="modal support-modal" role="dialog" aria-modal="true">
    <div class="support-modal__container">
        <?php App\Layout\Components\UI\Core\Buttons\ButtonClose\Layout::drawButtonClose(
            className: 'support-modal__button-close',
            attributes: [
                'onclick' => 'modalManager.close("support-modal")',
            ]
        );
        ?>
        <div class="support-modal__content">
            <div class="support-modal__top">
                <h3 class="support-modal__title">
                    <?= $data['title'] ?>
                </h3>
                <div class="support-modal__badges">
                    <?php
                        App\Layout\Components\UI\Core\Badge\Layout::drawBadge(
                            text: 'Онлайн',
                            style: \App\Layout\Components\UI\Core\Badge\BadgeStyle::OrangeLighter,
                            size: \App\Layout\Components\UI\Core\Badge\BadgeSize::Medium,
                        );
                        App\Layout\Components\UI\Core\Badge\Layout::drawBadge(
                            text: 'С доктором',
                            style: \App\Layout\Components\UI\Core\Badge\BadgeStyle::BlueLighter,
                            size: \App\Layout\Components\UI\Core\Badge\BadgeSize::Medium,
                        );
                        App\Layout\Components\UI\Core\Badge\Layout::drawBadge(
                            text: '3 консультации',
                            style: \App\Layout\Components\UI\Core\Badge\BadgeStyle::BlueLighter,
                            size: \App\Layout\Components\UI\Core\Badge\BadgeSize::Medium,
                        );
                    ?>
                </div>
                <div class="price-block__text">
                    <?= $data['text'] ?>
                </div>
                <div class="support-modal__price">
                    <div class="support-modal__price--value">
                        <h2 class="support-modal__price--final">
                            <?= $data['price'] ?> ₽
                        </h2>
                        <span class="support-modal__price--through">
                            <?= $data['price-through'] ?> ₽
                        </span>
                    </div>
                    <div class="support-modal__price--descr">
                        <?= $data['description'] ?>
                    </div>
                </div>
            </div>
            <div class="callback-modal__content">
                <div class="form-block__form--links">
                    <?php
                        if ($vk) {
                            App\Layout\Components\UI\Core\Buttons\Button\Layout::drawButton(
                                text: 'Написать Вконтакте',
                                link: '{vk}',
                                icon: 'social-mono-vk',
                                style: \App\Layout\Components\UI\Core\Buttons\Button\ButtonStyle::White,
                            );
                        }
                        if ($tg) {
                            App\Layout\Components\UI\Core\Buttons\Button\Layout::drawButton(
                                text: 'Написать в Telegram',
                                link: '{tg}',
                                icon: 'social-mono-tg',
                                style: \App\Layout\Components\UI\Core\Buttons\Button\ButtonStyle::White,
                            );
                        }
                    ?>
                </div>

                <?php
                App\Layout\Components\UI\Core\Separator\Layout::drawSeparator(
                    size: \App\Layout\Components\UI\Core\Separator\SeparatorSize::Small,
                );

                App\Layout\Components\UI\Core\Form\Layout::draw(['form_name'=>'Сопровождение']);
                ?>
            </div>
        </div>
    </div>
</div>