<?php

namespace App\Layout\Components\UI\Core\Link;

use App\Layout\LayoutBase;

class Layout extends LayoutBase
{
    public static function drawLink(
        string     $className = '',
        string     $text = '',
        array      $attributes = []
    ): void
    {
        static::draw(compact(
                'className',
                'icon',
                'link',
                'text',
                'attributes'
            ) + [
            ]
        );
    }
}