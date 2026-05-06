<?php

namespace App\Layout\Components\UI\Other\DoubleCard;

use App\Layout\LayoutBase;

class Layout extends LayoutBase
{
    public static function drawDoubleCard(
        string           $className = '',
        string           $number = '' ,
        string           $textTop = '',
        string           $textBottom = '',
        string           $textRight = '',
        DoubleCardStyle  $style = DoubleCardStyle::Blue,
    ): void
    {
        static::draw(compact(
                'className',
                'number',
                'textTop',
                'textBottom',
                'textRight',
                'attributes',
            ) + [
                'style' => $style->value
            ]
        );
    }
}