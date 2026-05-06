<?php
/** @var array $data */

?>

<section class="row-pictures">
    <div class="row-pictures__slider-wrap">
        <div class="row-pictures__slider">
            <div class="swiper-wrapper">
                <?php foreach ($data['images'] as $item): ?>
                    <div class="swiper-slide">
                        <img src="<?= $item['image'] ?>" alt="">
                    </div>
                <?php endforeach; ?>
            </div>
        </div>
    </div>
</section>
