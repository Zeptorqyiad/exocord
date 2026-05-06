<?php
/** @var array $data */

?>

<?php if ($data['items']): ?>
    <section class="steps" id="steps">
        <div class="steps__container wrapper">
            <div class="steps__wrapper">
                <h2 class="diagnoses__title title">
                    <?= $data['title'] ?>

                    <span class="accent-title">
                        <?= $data['accent-title'] ?>
                    </span>
                </h2>
            </div>
            <div class="steps__content">
                <?php foreach ($data['items'] as $index => $item): ?>
                    <div class="steps__column">
                        <?php
                            App\Layout\Components\UI\Other\StepsCard\Layout::drawStepsCard(
                                number: $item['number'],
                                title: $item['title'],
                                badge: $item['badge'],
                                description: $item['description'],
                                text: $item['text'],
                                border: $index === 1 ? \App\Layout\Components\UI\Other\StepsCard\StepsBorder::OrangeLight : ($index === 2 ? \App\Layout\Components\UI\Other\StepsCard\StepsBorder::BlueLighter : \App\Layout\Components\UI\Other\StepsCard\StepsBorder::BlueLight),
                                numberColor: $index === 1 ? \App\Layout\Components\UI\Other\StepsCard\StepsNumbersColor::Orange : \App\Layout\Components\UI\Other\StepsCard\StepsNumbersColor::Blue,
                                badgeBorder: $index === 0 || $index === 2 ? \App\Layout\Components\UI\Other\StepsCard\StepsBadgeBorder::Orange : \App\Layout\Components\UI\Other\StepsCard\StepsBadgeBorder::Blue,
                                bgText: $index === 1 ? \App\Layout\Components\UI\Other\StepsCard\StepsBgText::Orange : \App\Layout\Components\UI\Other\StepsCard\StepsBgText::Blue,
                                buttonText: !empty($item['buttonText']) ? $item['buttonText'] : '',
                            );
                            App\Layout\Components\UI\Other\Picture\Layout::drawPicture(
                                image: !empty($item['image']) ? $item['image'] : '',
                                border: $index === 1 ? \App\Layout\Components\UI\Other\Picture\PictureBorder::Blue : \App\Layout\Components\UI\Other\Picture\PictureBorder::Outline,
                            );
                        ?>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>
    </section>
<?php endif; ?>