<?php
/** @var array $data */

?>

<section class="interaction">
    <div class="interaction__container wrapper">
        <div class="interaction__head">
            <?php if ($data['title'] ||$data['accent-title']): ?>
                <h2 class="interaction__title title">
                    <?= $data['title'] ?>

                    <span class="accent-title">
                        <?= $data['accent-title'] ?>
                    </span>
                </h2>
            <?php endif; ?>
        </div>

        <div class="interaction__content">
            <?php
            $items = $data['items'];
            $borders = [
                \App\Layout\Components\UI\Other\StepsCard\StepsBorder::BlueLight,
                \App\Layout\Components\UI\Other\StepsCard\StepsBorder::OrangeLighter,
                \App\Layout\Components\UI\Other\StepsCard\StepsBorder::BlueLight,
                \App\Layout\Components\UI\Other\StepsCard\StepsBorder::BlueLighter,
            ];
            $numberColors = [
                \App\Layout\Components\UI\Other\StepsCard\StepsNumbersColor::Orange,
                \App\Layout\Components\UI\Other\StepsCard\StepsNumbersColor::Orange,
                \App\Layout\Components\UI\Other\StepsCard\StepsNumbersColor::Orange,
                \App\Layout\Components\UI\Other\StepsCard\StepsNumbersColor::Blue,
            ];
            $bgTexts = [
                \App\Layout\Components\UI\Other\StepsCard\StepsBgText::Blue,
                \App\Layout\Components\UI\Other\StepsCard\StepsBgText::Orange,
                \App\Layout\Components\UI\Other\StepsCard\StepsBgText::Blue,
                \App\Layout\Components\UI\Other\StepsCard\StepsBgText::Orange,
            ];
            $titleColors = [
                \App\Layout\Components\UI\Other\StepsCard\StepsTitleColor::Dark,
                \App\Layout\Components\UI\Other\StepsCard\StepsTitleColor::Dark,
                \App\Layout\Components\UI\Other\StepsCard\StepsTitleColor::Dark,
                \App\Layout\Components\UI\Other\StepsCard\StepsTitleColor::Blue,
            ];
            $buttonTexts = [
                'Получить консультацию',
                '',
                '',
                '',
            ];

            for ($i = 0; $i < count($items); $i++) {
                ?>
                <div class="interaction__item">
                    <?php
                    App\Layout\Components\UI\Other\StepsCard\Layout::drawStepsCard(
                        number: $items[$i]['number'],
                        title: $items[$i]['title'],
                        description: $items[$i]['description'],
                        text: $items[$i]['text'],
                        border: $borders[$i],
                        numberColor: $numberColors[$i],
                        titleColor: $titleColors[$i],
                        bgText: $bgTexts[$i],
                        buttonText: $buttonTexts[$i],
                    );
                    ?>
                </div>
                <?php
            }
            ?>
        </div>
    </div>
</section>