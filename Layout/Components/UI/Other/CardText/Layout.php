<?php

namespace App\Layout\Components\UI\Other\CardText;

use App\Layout\LayoutBase;

class Layout extends LayoutBase
{
    public static function drawCardText(
        string           $className = '',
        string           $title = '',
        string           $text = '',
        string           $accentText = '',
        string           $textAfter = '',
        bool             $marker = false,
        string           $icon = '',
        CardTextBorder   $border = CardTextBorder::Outline,
        CardTextColor    $color = CardTextColor::Dark,
        CardMarker       $markerColor = CardMarker::Blue,
        array            $attributes = []
    ): void
    {
        static::draw(compact(
                'className',
                'attributes',
                'title',
                'text',
                'accentText',
                'textAfter',
                'marker',
                'icon',
            ) + [
                'border' => $border->value,
                'color' => $color->value,
                'markerColor' => $markerColor->value,
            ]
        );
    }
}