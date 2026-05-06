<?php
/** @var array $content */

$index = $content->loadFrom('/');

$q = App\Extensions\Blog\Model\Blog::findAdv();

$pag = $_REQUEST['page'] ?? 0;

$count = $q->select('count(*)')->fetchScalar();
$cards = $q->select('*')
    ->limit('16 offset ' . ($pag * 16))
    ->where(['is_active' => 1])
    ->orderBy('npp DESC')
    ->all();
?>

<?php
    App\Layout\Components\Common\Header\Layout::draw();
?>

    <main>
        <?php
        App\Layout\Components\UI\Core\BreadCrumbs\Layout::draw();

        App\Layout\Components\Common\PageHeading\Layout::drawPageHeading(
            title: 'Статьи',
        );

        App\Layout\Components\Layout\BlogWrapper\Layout::draw([
            'cards' => $cards,
        ]);

        App\Layout\Components\UI\Other\Pagination\Layout::drawPages($pag, ceil($count / 15));
        ?>
    </main>

<?php
    App\Layout\Components\Blocks\Footer\Layout::draw();
?>