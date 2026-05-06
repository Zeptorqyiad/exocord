<?php
/** @var array $data */

?>

<section class="efficiency">
    <div class="efficiency__container wrapper">
        <div class="efficiency__head">
            <?php if ($data['title'] || $data['accent-title']): ?>
                <h2 class="efficiency__title title">
                    <?= $data['title'] ?>
                    <span class="accent-title">
                        <?= $data['accent-title'] ?>
                    </span>
                </h2>
            <?php endif; ?>
        </div>
        <div class="efficiency__content">
             <div class="efficiency__item">
                 <?php
                    if ($data['image-first']) {
                        App\Layout\Components\UI\Other\Picture\Layout::drawPicture(
                            image: '/uf/images/source/' . $data['image-first'],
                        );
                    }
                    if ($data['ellipse-left']) {
                        App\Layout\Components\UI\Other\CardEllipse\Layout::drawCardEllipse(
                            text: $data['ellipse-left'],
                            pos: \App\Layout\Components\UI\Other\CardEllipse\CardEllipsePos::Right,
                            color: \App\Layout\Components\UI\Other\CardEllipse\CardEllipseColor::Orange,
                        );
                    }
                    if ($data['left-card_title'] || $data['left-card_text']) {
                        App\Layout\Components\UI\Other\CardText\Layout::drawCardText(
                            title: $data['left-card_title'],
                            text: $data['left-card_text'],
                        );
                    }
                 ?>
             </div>
             <div class="efficiency__item">
                 <?php
                    if ($data['center-card_text'] || $data['center-card_title']) {
                        App\Layout\Components\UI\Other\CardText\Layout::drawCardText(
                            title: $data['center-card_title'] ?? '',
                            text: $data['center-card_text'] ?? '',
                        );
                    }
                    if ($data['image-second']) {
                        App\Layout\Components\UI\Other\Picture\Layout::drawPicture(
                            image: 'uf/images/source/' . $data['image-second'],
                        );
                    }
                    if ($data['ellipse-center']) {
                        App\Layout\Components\UI\Other\CardEllipse\Layout::drawCardEllipse(
                            text: $data['ellipse-center'],
                        );
                    }
                 ?>
             </div>
             <div class="efficiency__item">
                 <?php
                     if ($data['ellipse-right']) {
                         App\Layout\Components\UI\Other\CardEllipse\Layout::drawCardEllipse(
                             text: $data['ellipse-right'],
                         );
                     }
                    if ($data['right-card_title'] || $data['right-card_text']) {
                        App\Layout\Components\UI\Other\CardText\Layout::drawCardText(
                            title: $data['right-card_title'],
                            text: $data['right-card_text'],
                        );
                    }
                 ?>
             </div>
        </div>
    </div>
</section>