<?php
/** @var array $data */
?>

<section class="blog-section">
    <div class="blog-section__container container">
        <?php
        foreach ($data['cards'] as $card) {
            App\Layout\Components\Blocks\BlogCard\Layout::drawBlogCard(
                link: '/blog/' . $card['alias'] . '/',
                title: $card['name'] ?? '',
                desc: $card['short'] ?? '',
                image: '/uf/images/source/' . $card['photo'] ?? '',
            );
        }
        ?>
    </div>
</section>