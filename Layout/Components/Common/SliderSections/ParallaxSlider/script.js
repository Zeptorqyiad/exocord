(function () {
    'use strict';

    document.querySelectorAll('.production__container').forEach(container => {
        const slider = container.querySelector('.production-slider__slider');
        const prevButton = container.querySelector('.production-slider__button-prev');
        const nextButton = container.querySelector('.production-slider__button-next');
        swiperManager.create(slider, {
            loop: true,
            navigation: {
                prevEl: prevButton,
                nextEl: nextButton
            },
            breakpoints: {
                0: { slidesPerView: 1.05 },
                481: { slidesPerView: 1.2 },
                811: { slidesPerView: 2.1 },
                1401: { slidesPerView: 2.1 },
            },
        });
    });
})();