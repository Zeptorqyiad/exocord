(function () {
    'use strict';

    document.addEventListener('DOMContentLoaded', function () {
        document.querySelectorAll('.row-pictures').forEach(container => {
            const slider = container.querySelector('.row-pictures__slider');

            swiperManager.create(slider, {
                slidesPerView: 'auto',
                loop: true,
                autoplay: {
                    delay: 1,
                },
                speed: 10000,
            });
        });
    });
})();