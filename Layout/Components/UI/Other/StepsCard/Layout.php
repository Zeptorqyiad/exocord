<?php

namespace App\Layout\Components\UI\Other\StepsCard;

use App\Layout\LayoutBase;

class Layout extends LayoutBase
{
    public static function drawStepsCard(
        string               $className = '',
        string               $number = '',
        string               $fio = '',
        string               $image = '',
        string               $years = '',
        string               $diagnos = '',
        string               $title = '',
        string               $badge = '',
        string               $description = '',
        string               $text = '',
        string               $textBlockTitle = '',
        StepsBorder          $border = StepsBorder::BlueLight,
        StepsNumbersColor    $numberColor = StepsNumbersColor::Blue,
        StepsTitleColor      $titleColor = StepsTitleColor::Dark,
        StepsBadgeBorder     $badgeBorder = StepsBadgeBorder::Blue,
        StepsBgText          $bgText = StepsBgText::Blue,
        string               $buttonText = '',
        array                $attributes = []
    ): void
    {
        static::draw(compact(
                'className',
                'number',
                'fio',
                'image',
                'years',
                'diagnos',
                'title',
                'badge',
                'description',
                'text',
                'textBlockTitle',
                'buttonText',
                'attributes',
            ) + [
                'border' => $border->value,
                'numberColor' => $numberColor->value,
                'titleColor' => $titleColor->value,
                'badgeBorder' => $badgeBorder->value,
                'bgText' => $bgText->value,
            ]
        );
    }
}