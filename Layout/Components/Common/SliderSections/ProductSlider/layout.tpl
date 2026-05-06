<?php
/** @var array $data */

?>


<div class="product-fs">
    <?php if ($data['images']): ?>
        <div class="product-fs__media">
            <div class="product-fs__image-container">
                <!------- Thumbs ------->
                <div class="product-fs__images-aside">
                    <div class="swiper-wrapper">
                        <?php foreach ($data['images'] as $index => $img): ?>
                            <?php if (!($img['video'] ?? '')): ?>
                                <img class="product-fs__slide-thumb swiper-slide"
                                     src="<?= $img['img'] ?>"
                                     alt="<?= $data['title'] . ' ' . $index ?>"
                                     data-index="<?= $index ?>"
                                     loading="lazy"
                                     draggable="false"
                                >
                            <?php else: ?>
                                <video class="product-fs__slide-thumb swiper-slide"
                                       playsinline
                                       muted
                                       preload="metadata"
                                       data-index="<?= $index ?>"
                                       loading="lazy"
                                >
                                    <source src="/uf/files/<?= $img['video'] ?>" type="video/<?= pathinfo($img['video'], PATHINFO_EXTENSION) ?>">
                                    Ваш браузер не поддерживает видео.
                                </video>
                            <?php endif; ?>
                        <?php endforeach; ?>
                    </div>
                    <?php
                        App\Layout\Components\UI\Core\Buttons\Button\Layout::drawButton(
                            className: 'product-fs__slider-button-prev',
                            icon: 'chevron-up',
                            style: \App\Layout\Components\UI\Core\Buttons\Button\ButtonStyle::OutlineWhite,
                            size: \App\Layout\Components\UI\Core\Buttons\Button\ButtonSize::Small,
                        );
                        App\Layout\Components\UI\Core\Buttons\Button\Layout::drawButton(
                            className: 'product-fs__slider-button-next',
                            icon: 'chevron-down',
                            style: \App\Layout\Components\UI\Core\Buttons\Button\ButtonStyle::OutlineWhite,
                            size: \App\Layout\Components\UI\Core\Buttons\Button\ButtonSize::Small,
                        );
                    ?>
                </div>
                <!------- Main ------->
                <div class="product-fs__image-gallery">
                    <div class="product-fs__main-slider">
                        <div class="swiper-wrapper">
                            <?php foreach ($data['images'] as $index => $img): ?>
                                <div class="product-fs__main-slide swiper-slide">
                                    <?php if (!($img['video'] ?? '')): ?>
                                        <img class="product-fs__main-image"
                                             src="<?= $img['img'] ?>"
                                             alt="<?= $data['title'] . ' ' . $index ?>"
                                             data-index="<?= $index ?>"
                                             loading="lazy"
                                             draggable="false"
                                             data-fancybox="prod-gallery-desktop"
                                        >
                                    <?php else:?>
                                        <video class="product-fs__main-image"
                                               data-index="<?= $index ?>"
                                               playsinline
                                               muted
                                               controls
                                               preload="metadata"
                                               loading="lazy"
                                        >
                                            <source src="/uf/files/<?= $img['video'] ?>" type="video/<?= pathinfo($img['video'], PATHINFO_EXTENSION) ?>">
                                            Ваш браузер не поддерживает видео.
                                        </video>
                                    <?php endif; ?>
                                </div>
                            <?php endforeach; ?>
                        </div>
                    </div>
                </div>
            </div>

            <!------- Mobile ------->
            <div class="product-fs__slider">
                <div class="product-fs__slider-wrap">
                    <div class="swiper-wrapper">
                        <?php foreach ($data['images'] as $index => $img): ?>
                            <div class="product-fs__slide swiper-slide">
                                <img src="<?= $img['img'] ?>"
                                     alt="<?= $data['title'] . ' ' . $index ?>"
                                     loading="lazy"
                                     draggable="false"
                                     data-fancybox="prod-gallery-mobile"
                                >
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
                <div class="product-fs__slider-pagination"></div>
            </div>
        </div>
    <?php endif; ?>
</div>