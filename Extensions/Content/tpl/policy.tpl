<?php
/** @var array $content */

?>

<?php
App\Layout\Components\Common\Header\Layout::draw();
?>

<main>
    <?php
    App\Layout\Components\UI\Core\BreadCrumbs\Layout::draw();

    App\Layout\Components\Layout\Policy\Layout::draw([
        'title' => $content['params']['policy-title'],
        'content' => $content['params']['policy-content'],
    ]);
    ?>
</main>

<?php
    App\Layout\Components\Blocks\Footer\Layout::draw();
?>

