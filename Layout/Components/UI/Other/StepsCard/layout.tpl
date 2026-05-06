<?php
/** @var array $data */

$stepsCardClasses = [
    'steps-card',
    "steps-card-border_{$data['border']}",
    "steps-card-number_{$data['numberColor']}",
    "steps-card-title_{$data['titleColor']}",
    $data['className'] ?? ''
];

?>

<div class="<?= implode(' ', $stepsCardClasses) ?>" <?= buildAttrs($data['attributes'] ?? []) ?>>
    
    <div class="steps-card__head">
        <?php if ($data['number']): ?>
            <h2 class="steps-card__head--number">
                <?= $data['number'] ?>
            </h2>
        <?php endif; ?>
        <?php if ($data['title']): ?>
            <h4 class="steps-card__head--title">
                <?= $data['title'] ?>
            </h4>
        <?php endif; ?>
        <?php if ($data['badge']): ?>
            <div class="steps-card__head--badge <?= $data['badgeBorder'] ?>">
                <?= $data['badge'] ?>
            </div>
        <?php endif; ?>
        
        <?php if ($data['image'] || $data['fio']): ?>
            <div class="steps-card__info">
                <div class="steps-card__info--ls">
                    <img src="<?= $data['image'] ?>" alt="">
                </div>
                <div class="steps-card__info--rs">
                    <h3 class="steps-card__fio">
                        <?= $data['fio'] ?>
                        <span>
                            <?= $data['years'] ?>
                        </span>
                    </h3>
                    <div class="steps-card__diagnos">
                        <?= $data['diagnos'] ?>
                    </div>
                </div>
            </div>
        <?php endif; ?>
    </div>

    <div class="steps-card__textBlock">
        <?php if ($data['description']): ?>
            <div class="steps-card__textBlock--descr">
                <?= $data['description'] ?>
            </div>
        <?php endif; ?>
        <?php if ($data['text']): ?>
            <div class="steps-card__textBlock--text <?= $data['bgText'] ?>">
                <?php if ($data['textBlockTitle']): ?>
                    <h3 class="steps-card__textBlock--title">
                        <?= $data['textBlockTitle'] ?>
                    </h3>
                <?php endif; ?>

                <?= $data['text'] ?>
            </div>
        <?php endif; ?>
    </div>

    <div class="steps-card__more">
        <?php
            App\Layout\Components\UI\Core\Buttons\Button\Layout::drawButton(
                text: 'Подробнее',
                style: \App\Layout\Components\UI\Core\Buttons\Button\ButtonStyle::Outline,
                attributes: [
                    'onclick' => 'modalManager.open("reviews-modal");',
                ]
            );
        ?>
    </div>

    <?php if ($data['buttonText']) {
        $modalId = 'callback-modal';

        if ($data['number'] == '03') {
            $modalId = 'support-modal';
        }

        App\Layout\Components\UI\Core\Buttons\Button\Layout::drawButton(
            className: 'steps-card__button',
            text: $data['buttonText'],
            attributes: [
                'onclick' => 'modalManager.open("' . $modalId . '");',
            ]
        );
        }
    ?>
</div>