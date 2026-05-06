(function () {
    'use strict'

    const reviewsModal = document.getElementById('reviews-modal');

    // Функция для удаления тегов <p> в начале и конце строки
    const removePTags = (str) => {
        if (!str) return str;
        return str.replace(/^<p[^>]*>|<\/p>$/gi, '');
    };

    reviewsModal.addEventListener('modalopen', function(event) {
        const data = event.detail || {}
        // Обновляем содержимое модального окна
        this.querySelector('.reviews-modal__image').innerHTML = `<img src="${data.image}" alt="">`
        this.querySelector('.reviews-modal__fio').textContent = data.fio
        this.querySelector('.reviews-modal__years').textContent = data.years
        this.querySelector('.reviews-modal__diagnos').textContent = data.diagnos
        this.querySelector('.reviews-modal__text').textContent = data.description
        this.querySelector('.reviews-modal__title').textContent = removePTags(data.title)
        this.querySelector('.reviews-modal__que').textContent = removePTags(data.que)
    });

    document.addEventListener('DOMContentLoaded', function() {
        document.querySelectorAll('.steps-card').forEach(function(card) {
            const moreButton = card.querySelector('.steps-card__more button');
            if (moreButton) {
                moreButton.addEventListener('click', function() {
                    const data = {
                        image: card.getAttribute('data-image'),
                        fio: card.getAttribute('data-fio'),
                        years: card.getAttribute('data-years'),
                        diagnos: card.getAttribute('data-diagnos'),
                        description: removePTags(card.getAttribute('data-description')),
                        title: card.getAttribute('data-title'),
                        que: removePTags(card.getAttribute('data-que')),
                    };
                    // Открываем модальное окно с данными
                    modalManager.open('reviews-modal', data);
                });
            }
        });
    });
}());