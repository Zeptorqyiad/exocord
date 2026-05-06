<?php
/** @var array $data */

$doubleCardClasses = [
    'db-card',
    $data['className'] ?? ''
];

$doubleCardStyle = [
    "db-card-style_{$data['style']}",
]
?>

<div class="<?= implode(' ', $doubleCardClasses) ?>">
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 290 94" fill="none">
        <?php if ($data['style'] === 'blue'): ?>
                <path d="M149 1C163.134 1 175.364 9.14691 181.255 21H253C272.882 21 289 37.1178 289 57C289 76.8822 272.882 93 253 93H139C124.866 93 112.636 84.8531 106.745 73H37C17.1178 73 1 56.8822 1 37C1 17.1177 17.1177 1 37 1H149Z" fill="white" stroke="#D9E9FF" stroke-width="2"/>
        <?php elseif ($data['style'] === 'orange'): ?>
                <path d="M149 1C163.134 1 175.364 9.14691 181.255 21H253C272.882 21 289 37.1178 289 57C289 76.8822 272.882 93 253 93H139C124.866 93 112.636 84.8531 106.745 73H37C17.1178 73 1 56.8822 1 37C1 17.1177 17.1177 1 37 1H149Z" fill="white" stroke="#FFEFD9" stroke-width="2"/>
        <?php endif; ?>
    </svg>

    <h3 class="db-card__number <?= implode($doubleCardStyle) ?>"><?= $data['number'] ?></h3>
    <span class="db-card__text-top <?= implode($doubleCardStyle) ?>"><?= $data['textTop'] ?></span>
    <span class="db-card__text-bottom"><?= $data['textBottom'] ?></span>
    <span class="db-card__text-right"><?= $data['textRight'] ?></span>
</div>

