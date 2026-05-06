<?php
/** @var array $data */

?>

<section class="diagnoses">
    <div class="diagnoses__container wrapper">
        <div class="diagnoses__wrapper">
            <?php if ($data['title'] || $data['accent-title']): ?>
                <h2 class="diagnoses__title title">
                    <?= $data['title'] ?>
                    <span class="accent-title">
                        <?= $data['accent-title'] ?>
                    </span>
                </h2>
            <?php endif; ?>
        </div>
        <div class="diagnoses__content">
            <div class="diagnoses__content-top">
                <div class="diagnoses__content-top--ls">
                    <div class="diagnoses__tabs">
                        <?php
                        $items = $data['items-left'];
                        $colors = [
                            \App\Layout\Components\UI\Other\CardText\CardTextColor::Blue,
                            \App\Layout\Components\UI\Other\CardText\CardTextColor::Orange,
                            \App\Layout\Components\UI\Other\CardText\CardTextColor::Blue
                        ];
                        $borders = [
                            \App\Layout\Components\UI\Other\CardText\CardTextBorder::Outline,
                            \App\Layout\Components\UI\Other\CardText\CardTextBorder::Blue,
                            \App\Layout\Components\UI\Other\CardText\CardTextBorder::Lighter
                        ];

                        for ($i = 0; $i < count($items); $i++) {
                            App\Layout\Components\UI\Other\CardText\Layout::drawCardText(
                                title: $items[$i]['title'],
                                text: $items[$i]['text'],
                                accentText: $items[$i]['accent-text'],
                                textAfter: !empty($items[$i]['text-after']) ? $items[$i]['text-after'] : '',
                                border: $borders[$i],
                                color: $colors[$i]
                            );
                        }
                        ?>
                    </div>
                    <div class="diagnoses__preview">
                        <?php
                            if ($data['image-first']) {
                                App\Layout\Components\UI\Other\Picture\Layout::drawPicture(
                                    className: 'diagnoses__preview-image',
                                    image: $data['image-first'],
                                    border: \App\Layout\Components\UI\Other\Picture\PictureBorder::Orange,
                                );
                            }

                            if ($data['ellipse-first']) {
                                App\Layout\Components\UI\Other\CardEllipse\Layout::drawCardEllipse(
                                    text: $data['ellipse-first'],
                                );
                            }
                        ?>
                    </div>
                </div>
                <div class="diagnoses__content-top--rs">
                    <div class="diagnoses__tabs">
                        <?php
                        $items = $data['items-right'];
                        $borders = [
                            \App\Layout\Components\UI\Other\CardText\CardTextBorder::Blue,
                            \App\Layout\Components\UI\Other\CardText\CardTextBorder::Lighter,
                            \App\Layout\Components\UI\Other\CardText\CardTextBorder::Outline,
                        ];
                        $colors = [
                            \App\Layout\Components\UI\Other\CardText\CardTextColor::Blue,
                            \App\Layout\Components\UI\Other\CardText\CardTextColor::Orange,
                            \App\Layout\Components\UI\Other\CardText\CardTextColor::Blue
                        ];

                        for ($i = 0; $i < count($items); $i++) {
                            App\Layout\Components\UI\Other\CardText\Layout::drawCardText(
                                title: $items[$i]['title'],
                                text: $items[$i]['text'],
                                accentText: $items[$i]['accent-text'],
                                textAfter: isset($items[$i]['text-after']) ? $items[$i]['text-after'] : '',
                                border: $borders[$i],
                                color: $colors[$i]
                            );
                        }
                        ?>
                    </div>
                    <div class="diagnoses__preview">
                        <?php
                            if ($data['image-second']) {
                                App\Layout\Components\UI\Other\Picture\Layout::drawPicture(
                                    className: 'diagnoses__preview-image',
                                    image: $data['image-second'],
                                    border: \App\Layout\Components\UI\Other\Picture\PictureBorder::Blue,
                                );
                            }

                            if ($data['ellipse-second']) {
                                App\Layout\Components\UI\Other\CardEllipse\Layout::drawCardEllipse(
                                    text: $data['ellipse-second'],
                                    color: \App\Layout\Components\UI\Other\CardEllipse\CardEllipseColor::Orange,
                                );
                            }
                        ?>
                        <?php if ($data['diagnoses-preview']): ?>
                            <div class="diagnoses__preview--text">
                                <?= $data['diagnoses-preview'] ?>
                            </div>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
            <div class="diagnoses__content-bottom">
                <?php if ($data['diagnoses-descr-ls']): ?>
                    <div class="diagnoses__content-bottom--ls">
                        <?php
                            App\Layout\Components\UI\Other\CardText\Layout::drawCardText(
                                text: $data['diagnoses-descr-ls'],
                                border: \App\Layout\Components\UI\Other\CardText\CardTextBorder::Blue,
                            );
                        ?>
                    </div>
                <?php endif; ?>
                <?php if ($data['diagnoses-descr-rs']): ?>
                    <div class="diagnoses__content-bottom--rs">
                        <?php
                            App\Layout\Components\UI\Other\CardText\Layout::drawCardText(
                                text: $data['diagnoses-descr-rs'],
                                border: \App\Layout\Components\UI\Other\CardText\CardTextBorder::Blue,
                            );
                        ?>
                    </div>
                <?php endif; ?>
            </div>
        </div>
    </div>
</section>