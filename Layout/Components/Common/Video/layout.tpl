<?php
/** @var array $data */

?>

<video class="product-fs__main-image"
       playsinline
       muted
       controls
       preload="metadata"
       loading="lazy"
       autoplay
       loop
>
    <source src="/uf/files/<?= $data['video'] ?>" type="video/<?= pathinfo($data['video'], PATHINFO_EXTENSION) ?>">
    Ваш браузер не поддерживает видео.
</video>