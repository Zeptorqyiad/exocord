<?php
/** @var array $data */

$cardEllipseClasses = [
    'card-ellipse',
    "card-ellipse-pos_{$data['pos']}",
    "card-ellipse-color_{$data['color']}",
    $data['className'] ?? ''
];

?>

<div class="<?= implode(' ', $cardEllipseClasses) ?>">
    <div class="card-ellipse__content">
        <span class="card-ellipse__icon">
            <?= renderIcon($data['icon']) ?>
        </span>
        <?php if ($data['text']): ?>
            <div class="card-ellipse__text">
                <?= $data['text'] ?>
            </div>
        <?php endif; ?>
    </div>
</div>

