<?php
/** @var array $data */
/** @var array $content */

?>

<?php
    App\Layout\Components\Common\Header\Layout::draw([
        'support-title' => $content['params']['support-modal_title'],
        'support-text' => $content['params']['support-modal_text'],
        'support-description' => $content['params']['support-modal_descr'],
        'price-final' => $content['params']['calc-price_plus'],
        'price-through' => $content['params']['support-modal_price-through'],

        'title' => $content['params']['size-modal_title'] ?? '',
        'table-title' => $content['params']['size-modal_table-title'] ?? '',
        'description' => $content['params']['size-modal_description'] ?? '',
        'recommendation-title' => $content['params']['size-modal_rec-title'] ?? '',
        'recommendation-text' => $content['params']['size-modal_rec-text'] ?? '',
    ]);

    App\Layout\Components\Blocks\Banner\Layout::draw([
        'accent-title' => $content['params']['banner_accent-title'],
        'title' => $content['params']['banner-title'],
        'description' => $content['params']['banner-description'],
        'text' => $content['params']['banner-text'],
        'video' => $content['params']['banner-video'],
        'items' => self::getTableFrom('banner-items', $content),
    ]);

    App\Layout\Components\Common\SliderSections\RowPicturesSlider\Layout::draw([
        'images' => self::getTableFrom('row-pictures_slider', $content),
    ]);

    App\Layout\Components\Blocks\Diagnoses\Layout::draw([
        'title' => $content['params']['diagnoses-title'],
        'accent-title' => $content['params']['diagnoses-accent-title'],
        'items-left' => self::getTableFrom('diagnoses-items_left', $content),
        'items-right' => self::getTableFrom('diagnoses-items_right', $content),
        'image-first' => '/uf/images/source/' . $content['params']['diagnoses-image-first'],
        'image-second' => '/uf/images/source/' .  $content['params']['diagnoses-image-second'],
        'ellipse-first' => $content['params']['diagnoses-ellipse-first'],
        'ellipse-second' => $content['params']['diagnoses-ellipse-second'],
        'diagnoses-preview' => $content['params']['diagnoses-preview'],
        'diagnoses-descr-ls' => $content['params']['diagnoses-descr-left'],
        'diagnoses-descr-rs' => $content['params']['diagnoses-descr-right'],
    ]);

    App\Layout\Components\Blocks\Steps\Layout::draw([
        'title' => $content['params']['steps-title'],
        'accent-title' => $content['params']['steps_accent-title'],
        'items' => self::getTableFrom('steps-items', $content),
    ]);

    App\Layout\Components\Blocks\HowWorks\Layout::draw([
        'title' => $content['params']['how-title'],
        'accent-title' => $content['params']['how_accent-title'],
        'items' => self::getTableFrom('how-items', $content),
        'sticky-title' => $content['params']['how_sticky-title'],
        'video' => $content['params']['how-video'],
        'sticky-text' => $content['params']['how_sticky-text'],
    ]);

    App\Layout\Components\Blocks\Efficiency\Layout::draw([
        'title' => $content['params']['eff-title'],
        'accent-title' => $content['params']['eff_accent-title'],
        'image-first' => $content['params']['eff_image-first'],
        'ellipse-left' => $content['params']['eff_ell-left'],
        'left-card_title' => $content['params']['eff_card-title-left'],
        'left-card_text' => $content['params']['eff_card-text-left'],
        'image-second' => $content['params']['eff_image-second'],
        'ellipse-center' => $content['params']['eff_ell-center'],
        'center-card_title' => $content['params']['eff_card-title-center'],
        'center-card_text' => $content['params']['eff_card-text-center'],
        'ellipse-right' => $content['params']['eff_ell-right'],
        'right-card_title' => $content['params']['eff_card-title-right'],
        'right-card_text' => $content['params']['eff_card-text-right'],
    ]);

    App\Layout\Components\Blocks\Interaction\Layout::draw([
        'title' => $content['params']['interaction-title'],
        'accent-title' => $content['params']['interaction-accent-title'],
        'items' => self::getTableFrom('interaction-items', $content),
    ]);

    App\Layout\Components\Blocks\PriceBlock\Layout::draw([
        'images' => self::getTableFrom('priceBlock-images', $content),
        'title' => $content['params']['priceBlock-title'],
        'accent-title' => $content['params']['priceBlock-accent-title'],
        'after-title' => $content['params']['priceBlock-after-title'],
        'text' => $content['params']['priceBlock-text'],
        'calc-head_title' => $content['params']['calc-head_title'],
        'calc-head_badge' => $content['params']['calc-head_badge'],
        'badges' => self::getTableFrom('calc-badges', $content),
        'description' => $content['params']['calc-description'],
        'price-plus' => $content['params']['calc-price_plus'],
        'text-bottom' => $content['params']['calc-text_bottom'],
        'price-final' => $content['params']['calc-final_price'],
        'price-through' => $content['params']['calc-price_through'],
        'price-descr' => $content['params']['calc-price_descr'],
        'definition' => $content['params']['calc-definition'],
        'consultation' => $content['params']['calc-consultation'],
    ]);

    App\Layout\Components\Blocks\Doctor\Layout::draw([
        'title' => $content['params']['doctor-title'],
        'accent-title' => $content['params']['doctor-accent-title'],
        'card-title_1' => $content['params']['doctor-first-card-title'],
        'card-text_1' => $content['params']['doctor-first-card-text'],
        'card-title_2' => $content['params']['doctor-second-card-title'],
        'card-text_2' => $content['params']['doctor-second-card-text'],
        'video' => $content['params']['doctor-video'],
        'ellipse-text' => $content['params']['doctor-ell-text'],
        'card-title_3' => $content['params']['doctor-third-card-title'],
        'card-text_3' => $content['params']['doctor-third-card-text'],
        'footer-text' => $content['params']['doctor-footer_text'],
        'footer-accent-text' => $content['params']['doctor-footer_accent-text'],
    ]);

    App\Layout\Components\Blocks\Production\Layout::draw([
        'title' => $content['params']['production-title'],
        'accent-title' => $content['params']['production-accent-title'],
        'items' => self::getTableFrom('production-items', $content),
    ]);

    App\Layout\Components\Blocks\Reviews\Layout::draw([
        'title' => $content['params']['reviews-title'],
        'accent-title' => $content['params']['reviews-accent-title'],
        'items' => self::getTableFrom('reviews-items', $content),
    ]);

    App\Layout\Components\Blocks\Gallery\Layout::draw([
        'title' => $content['params']['gallery-title'],
        'items-left' => self::getTableFrom('gallery-item_left', $content),
        'items-center' => self::getTableFrom('gallery-item_center', $content),
        'items-right' => self::getTableFrom('gallery-item_right', $content),
    ]);

    App\Layout\Components\Common\SliderSections\BlogSlider\Layout::draw([
        'title' => 'Блог',
        'link' => '/blog/',
    ]);

    App\Layout\Components\Blocks\FAQ\Layout::draw([
        'title' => $content['params']['faq-title'],
        'items' => self::getTableFrom('faq-items', $content)
    ]);

    App\Layout\Components\Blocks\FormBlock\Layout::draw([
        'image' => $content['params']['form-image'],
        'title' => $content['params']['form-title'],
        'description' => $content['params']['form-description'],
    ]);

    App\Layout\Components\Blocks\Footer\Layout::draw();
?>