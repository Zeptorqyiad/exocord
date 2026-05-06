<?php
/** @var array $data */

?>

<div id="size-modal" class="modal size-modal" role="dialog" aria-modal="true">
    <?php App\Layout\Components\UI\Core\Buttons\ButtonClose\Layout::drawButtonClose(
        className: 'size-modal__button-close',
        attributes: [
            'onclick' => 'modalManager.close("size-modal")',
        ]
    ); ?>
    <div class="size-modal__container">
        <div class="size-modal__content">
            <div class="size-modal__title">
                <h3><?= $data['title'] ?></h3>
            </div>

            <div class="size-modal__table">
                <div class="size-modal__table--head">
                    <?= $data['table-title'] ?>
                </div>
                <div class="size-modal__table--table">
                    <table>
                        <tr>
                            <th>Размер</th>
                            <th>Обхват талии (международные значения), см</th>
                            <th>Обхват талии (диапазон для EcoCord), см</th>
                        </tr>
                        <tr>
                            <td>XS</td>
                            <td>64</td>
                            <td>65-70</td>
                        </tr>
                        <tr>
                            <td>S</td>
                            <td>68-84</td>
                            <td>70-80</td>
                        </tr>
                        <tr>
                            <td>M</td>
                            <td>74-90</td>
                            <td>80-90</td>
                        </tr>
                        <tr>
                            <td>L</td>
                            <td>82-96</td>
                            <td>90 и выше</td>
                        </tr>
                    </table>
                </div>
                <span class="size-modal__table--descr">
                    <?= $data['description'] ?>
                </span>
            </div>

            <div class="size-modal__recommend">
                <div class="size-modal__recommend--title">
                    <?= $data['recommendation-title'] ?>
                </div>
                <div class="size-modal__recommend--text">
                    <?= $data['recommendation-text'] ?>
                </div>
            </div>

            <?php
            App\Layout\Components\UI\Core\Buttons\Button\Layout::drawButton(
                text: 'Закрыть',
                style: \App\Layout\Components\UI\Core\Buttons\Button\ButtonStyle::Gray,
                attributes: [
                    'onclick' => 'modalManager.close("size-modal")',
                ]
            );
            ?>
        </div>
    </div>
</div>




