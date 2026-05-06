<?php
/** @var array $data */

$cardTextClasses = [
    'card-text',
    "card-text-border_{$data['border']}",
    "card-text-color_{$data['color']}",
    $data['className'] ?? ''
];

?>

<div class="<?= implode(' ', $cardTextClasses) ?>" <?= buildAttrs($data['attributes'] ?? []) ?>>
    <?php if ($data['title']): ?>
        <h4 class="card-text__title">
            <?= $data['title'] ?>
        </h4>
    <?php endif; ?>
    <?php if ($data['text']): ?>
        <div class="card-text__text">
            <?= $data['text'] ?>

            <?php if ($data['accentText']): ?>
                <span class="card-text__text--accent">
                    <?= $data['accentText'] ?>
                </span>
            <?php endif; ?>

            <?php if ($data['textAfter']): ?>
                <?= $data['textAfter'] ?>
            <?php endif; ?>
        </div>
    <?php endif; ?>

    <?php if ($data['marker'] === true): ?>
        <span class="card-text__marker <?= $data['markerColor'] ?>">
            <?= renderIcon($data['icon']) ?>
        </span>
    <?php endif; ?>
</div>

