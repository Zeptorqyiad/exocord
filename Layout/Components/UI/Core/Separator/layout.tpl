<?php
/** @var array $data */

$separatorClasses = [
    'separator',
    "separator-orientation_{$data['orientation']}",
    "separator-theme_{$data['theme']}",
    "separator-size_{$data['size']}",
    $data['className'] ?? ''
];
?>

<div class="<?= implode(' ', $separatorClasses) ?>" <?= buildAttrs($data['attributes'] ?? []) ?>></div>