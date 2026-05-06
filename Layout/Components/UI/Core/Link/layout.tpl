<?php
/** @var array $data */

$linkClasses = [
    'link',
    $data['className'] ?? ''
];
?>

<div class="<?= implode(' ', $linkClasses) ?>" <?= buildAttrs($data['attributes'] ?? []) ?>>
    <?php if ($data['text']): ?>
        <span class="link__text"><?= $data['text'] ?></span>
    <?php endif; ?>
</div>