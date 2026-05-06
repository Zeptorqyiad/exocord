<?php

namespace App\Layout\Components\UI\Other\Picture;

use App\Layout\LayoutBase;

class Layout extends LayoutBase
{
    public static function drawPicture(
        string           $className = '',
        string           $image = '',
        PictureBorder    $border = PictureBorder::Outline,
    ): void
    {
        static::draw(compact(
                'className',
                'image',
            ) + [
                'border' => $border->value,
            ]
        );
    }
}