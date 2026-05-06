<?php

namespace App\Layout\Components\UI\Other\CardEllipse;

use App\Layout\LayoutBase;

class Layout extends LayoutBase
{
    public static function drawCardEllipse(
        string           $className = '',
        string           $icon = 'true',
        string           $text = '',
        CardEllipsePos   $pos = CardEllipsePos::Left,
        CardEllipseColor $color = CardEllipseColor::Blue,
        array            $attributes = []
    ): void
    {
        static::draw(compact(
                'className',
                'icon',
                'attributes',
                'text',
            ) + [
                'pos' => $pos->value,
                'color' => $color->value,
            ]
        );
    }
}