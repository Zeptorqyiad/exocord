(function () {
    'use strict';

    document.querySelectorAll('.reviews__container').forEach(container => {
        const slider = container.querySelector('.reviews-slider__slider');
        const prevButton = container.querySelector('.reviews-slider__button-prev');
        const nextButton = container.querySelector('.reviews-slider__button-next');
        swiperManager.create(slider, {
            loop: true,
            navigation: {
                prevEl: prevButton,
                nextEl: nextButton
            },
            breakpoints: {
                0: { spaceBetween: 12, slidesPerView: 1 },
                481: { spaceBetween: 16, slidesPerView: 1 },
                811: { spaceBetween: 16, slidesPerView: 1 },
                1401: { spaceBetween: 20, slidesPerView: 1 },
            },
        });
    });
})();