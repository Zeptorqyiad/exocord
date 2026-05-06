(function () {
    'use strict';

    document.addEventListener('DOMContentLoaded', function () {
        document.querySelectorAll('.blog-slider').forEach(container => {
            const slider = container.querySelector('.blog-slider__slider');
            const slides = slider.querySelectorAll('.swiper-slide');
            const hasNavigation = slides.length > 5;

            const swiperConfig = {
                breakpoints: {
                    0: { spaceBetween: 16, slidesPerView: 1.2 },
                    481: { spaceBetween: 16, slidesPerView: 2.5 },
                    811: { spaceBetween: 16, slidesPerView: 4.15 },
                    1401: { spaceBetween: 20, slidesPerView: 4.7 },
                },
            };

            if (hasNavigation) {
                swiperConfig.navigation = {
                    prevEl: container.querySelector('.blog-slider__button-prev'),
                    nextEl: container.querySelector('.blog-slider__button-next')
                };
            } else {
                // Скрыть кнопки навигации
                const prevButton = container.querySelector('.blog-slider__button-prev');
                const nextButton = container.querySelector('.blog-slider__button-next');
                if (prevButton) prevButton.style.display = 'none';
                if (nextButton) nextButton.style.display = 'none';
            }

            swiperManager.create(slider, swiperConfig);
        });
    });
})();