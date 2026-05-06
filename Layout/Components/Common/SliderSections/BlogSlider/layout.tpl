<?php
/** @var array $data */

$cards = App\Extensions\Blog\Model\Blog::findAdv()
    ->where('blog_id <> :blog_id and is_active = 1')
    ->bind(['blog_id' => $data['blog_id'] ?? 0])
    ->limit(15)
    ->orderBy('npp desc')
    ->all();
?>

<?php if ($cards): ?>
    <section class="blog-slider <?= $data['className'] ?>">

        <h2 class="section-title blog-slider__title title"><?= $data['title'] ?? 'Новости и статьи' ?></h2>

        <div class="blog-slider__buttons">
            <?php
                App\Layout\Components\UI\Core\Buttons\Button\Layout::drawButton(
                    className: 'blog-slider__button-prev',
                    icon: 'arrow-left',
                    style: \App\Layout\Components\UI\Core\Buttons\Button\ButtonStyle::Gray,
                );
                App\Layout\Components\UI\Core\Buttons\Button\Layout::drawButton(
                    className: 'blog-slider__button-next',
                    icon: 'arrow-right',
                    style: \App\Layout\Components\UI\Core\Buttons\Button\ButtonStyle::Gray,
                );
                if ($data['link']) {
                    App\Layout\Components\UI\Core\Buttons\Button\Layout::drawButton(
                        className: 'blog-slider__button-link',
                        text: 'Все статьи',
                        link: $data['link'],
                        style: \App\Layout\Components\UI\Core\Buttons\Button\ButtonStyle::Outline,
                    );
                }
            ?>
        </div>

        <div class="blog-slider__slider-wrap">
            <div class="blog-slider__slider">
                <div class="swiper-wrapper">
                    <?php foreach ($cards as $card) {
                        App\Layout\Components\Blocks\BlogCard\Layout::drawBlogCard(
                            className: 'swiper-slide',
                            link: '/blog/' . $card['alias'] . '/',
                            title: $card['name'] ?? '',
                            desc: $card['short'] ?? '',
                            image: '/uf/images/source/' . $card['photo'],
                        );
                    } ?>
                </div>
            </div>
        </div>
    </section>
<?php endif; ?>
