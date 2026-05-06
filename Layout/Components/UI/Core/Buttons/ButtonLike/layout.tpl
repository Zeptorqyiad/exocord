<?php
/** @var array $data */

$buttonLikeClasses = [
    'btn-like',
    $data['className'] ?? ''
];
?>

<button class="<?= implode(' ', $buttonLikeClasses) ?>"
        type="<?= $data['attributes']['type'] ?? 'button' ?>" <?= buildAttrs($data['attributes'] ?? []) ?>>
    <?= renderIcon('slim-like', 'btn-like__icon') ?>
    <span class="btn-like__value"><?= $data['value'] ?></span>
</button>
