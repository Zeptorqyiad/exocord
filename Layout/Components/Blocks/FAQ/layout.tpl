<?php
/** @var array $data */

?>

<div class="wrapper">
    <?php
    App\Layout\Components\UI\Core\Separator\Layout::drawSeparator();
    ?>
</div>
<section class="faq">
    <div class="faq__container wrapper">
        <div class="faq__head">
            <?php if ($data['title']): ?>
                <h2 class="faq__title title">
                    <?= $data['title'] ?>
                </h2>
            <?php endif; ?>
        </div>
        <div class="faq__content">
            <?php foreach ($data['items'] as $item): ?>
                <?php
                    App\Layout\Components\UI\Core\Accordion\Layout::drawAccordion(
                        title: $item['title'],
                        description: $item['description'],
                    );
                ?>
            <?php endforeach; ?>
        </div>
    </div>
</section>
<div class="wrapper">
    <?php
    App\Layout\Components\UI\Core\Separator\Layout::drawSeparator();
    ?>
</div>