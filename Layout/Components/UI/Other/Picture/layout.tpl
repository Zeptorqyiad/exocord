<?php
/** @var array $data */

$pictureClasses = [
    'picture-custom',
    "picture-custom-border_{$data['border']}",
    $data['className'] ?? ''
];

?>

<div class="<?= implode(' ', $pictureClasses) ?>">
    <img src="<?= $data['image'] ?>" alt="">
</div>