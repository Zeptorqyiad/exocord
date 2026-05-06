<?php

namespace App\Layout\Components\UI\Core\Buttons\ButtonLike;

use App\Layout\LayoutBase;

class Layout extends LayoutBase
{
    public static function drawButtonLike(
        string $className = '',
        string $value = '',
        array  $attributes = []
    ): void
    {
        static::draw(compact(
                'className',
                'value',
                'attributes'
            )
        );
    }
}