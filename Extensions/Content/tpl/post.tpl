<?php
/** @var array $data */
/** @var array $content */

$index = $content->loadFrom('/');

$post = $this->post;
?>

<?php
App\Layout\Components\Common\Header\Layout::draw([
    'path' => '/'
]);
?>

<main>
    <?php
    App\Layout\Components\UI\Core\BreadCrumbs\Layout::draw();

    App\Layout\Components\Layout\Post\PostHeading\Layout::drawPostHeading(
        date: \Simflex\Core\Time::userfull($this->post->date ?? ''),
        category: $post->category->name ?? '',
        views: $post->views ?? 0,
        categoryId: $post->category->bc_id ?? 0
    );

    App\Layout\Components\Layout\Post\PostFs\Layout::drawPostFs(
        title: $post->name ?? '',
        description: $post->short ?? '',
        imgBig: $post->photo_big ?? '',
        imgMob: $post->photo_mob ?? '',
    );

    App\Layout\Components\Layout\Post\PostContent\Layout::drawPostContent(
        id: $post->blog_id ?? 0,
        content: $post->content ?? '',
        views: $post->views ?? 0,
        date: \Simflex\Core\Time::userfull($this->post->date ?? ''),
        likes: $post->likes ?? 0,
        dislikes: $post->dislikes ?? 0,
    );

    App\Layout\Components\Common\SliderSections\BlogSlider\Layout::draw([
        'title' => 'Другие статьи',
        'blog_id' => $post->blog_id,
    ]);
    ?>
</main>

<?php
    App\Layout\Components\Blocks\Footer\Layout::draw();
?>
