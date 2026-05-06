<?php
/** @var array $data */

$vk = Simflex\Core\Core::siteParam('vk');
$tg = Simflex\Core\Core::siteParam('tg');
?>

<section class="form-block" id="formBlock">
    <div class="form-block__container wrapper">
        <div class="form-block__content">
            <?php if ($data['image']): ?>
                <div class="form-block__content--ls">
                    <img src="/uf/images/source/<?= $data['image'] ?>" alt="">
                </div>
            <?php endif; ?>
            <div class="form-block__content--rs">
                <?php if ($data['title'] || $data['description']): ?>
                    <div class="form-block__head">
                        <h2 class="form-block__title title">
                            <?= $data['title'] ?>
                        </h2>
                        <div class="form-block__description">
                            <?= $data['description'] ?>
                        </div>
                    </div>
                <?php endif; ?>
                <div class="form-block__form">
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

                        App\Layout\Components\UI\Core\Form\Layout::draw(['form_name'=>'Обратная связь']);
                    ?>
                </div>
            </div>
        </div>
    </div>
</section>