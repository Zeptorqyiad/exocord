<?php
/** @var array $data */

$formId = uniqid('form_');
?>

<form id="<?= $formId ?>"
      class="form <?= $data['className'] ?? '' ?>" <?= buildAttrs($data['attributes'] ?? []) ?>
      enctype="multipart/form-data"
      method="post"
>
    <?php if ($data['form_name']): ?>
        <input type="hidden" name="form_name" value="<?= $data['form_name'] ?>" data-value-default="<?= $data['form_name'] ?>">
    <?php endif; ?>

    <div class="form__inputs">
        <div class="form__input-row">
            <?php
            App\Layout\Components\UI\Core\TextInput\Layout::drawInput(
                className: 'form__text-input form__text-input--name',
                labelText: 'Имя*',
                labelPos: \App\Layout\Components\UI\Core\TextInput\TextInputLabelPos::Standard,
                id: $formId . '_name',
                attributes: [
                    'name' => 'name',
                    'type' => 'text',
                    'placeholder' => 'Иван',
                    'required' => 'true',
                    'autocomplete' => 'given-name',
                ]
            );
            App\Layout\Components\UI\Core\TextInput\Layout::drawInput(
                className: 'form__text-input form__text-input--phone',
                labelText: 'Телефон*',
                labelPos: \App\Layout\Components\UI\Core\TextInput\TextInputLabelPos::Standard,
                id: $formId . '_phone',
                attributes: [
                    'name' => 'phone',
                    'type' => 'tel',
                    'placeholder' => '+7 (999) 999-99-99',
                    'required' => 'true',
                    'autocomplete' => 'tel',
                ]
            );
            ?>
        </div>

        <div class="form__honey" aria-hidden="true">
            <input class="honey-input"
                   type="text"
                   id="<?= $formId . '_honey_name' ?>"
                   name="_name"
                   autocomplete="off"
                   tabindex="-1"
            >
            <input class="honey-input"
                   type="email"
                   id="<?= $formId . '_honey_email' ?>"
                   name="_email"
                   autocomplete="off"
                   tabindex="-1"
            >
        </div>
    </div>

    <div class="form__controls">
        <?php
        App\Layout\Components\UI\Core\Checkbox\Layout::drawCheckbox(
            policy: true,
            attributes: [
                'id' => $formId . '_policy',
                'required' => 'true',
            ]
        );
        App\Layout\Components\UI\Core\Buttons\Button\Layout::drawButton(
            className: 'form__button-submit',
            text: 'Отправить заявку',
            loader: true,
            attributes: [
                'type' => 'submit',
                'onclick' => $data['nonModal'],
            ]
        );
        ?>
    </div>
</form>