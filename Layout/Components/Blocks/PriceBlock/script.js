const modalCb = document.querySelector('#callback-modal');

const cbClickGetConsult = function() {
    if (!modalCb) return;

    const formName = modalCb.querySelector('[name="form_name"]');

    formName.value = 'Блок товара';
    modalCb.setAttribute('data-check-switch', '');

    modalManager.open("callback-modal")
}

document.addEventListener('DOMContentLoaded', function() {
    // Функциональность для табов
    const tabs = document.querySelectorAll('.price-block__size--tabs .tab');
    if (tabs.length > 0) {
        tabs[0].classList.add('active');
    }
    tabs.forEach(function(tab) {
        tab.addEventListener('click', function() {
            tabs.forEach(function(t) {
                t.classList.remove('active');
            });
            this.classList.add('active');
        });
    });

    const toggle = document.querySelector('.price-block__support--toggle .toggle__input');
    const finalPrices = document.querySelectorAll('.price-block__price--final');
    const throughPrices = document.querySelectorAll('.price-block__price--through');

    if (toggle && finalPrices.length && throughPrices.length) {
        function parsePrice(priceText) {
            const digits = priceText.replace(/[^0-9]/g, '');
            return parseInt(digits, 10);
        }

        function formatPrice(number) {
            return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".") + " ₽";
        }

        // Получаем базовые цены из первого элемента в коллекции
        const baseFinal = parsePrice(finalPrices[0].textContent);
        const baseThrough = parsePrice(throughPrices[0].textContent);

        function updatePrices() {
            const additional = toggle.checked ? window.pricePlus : 0;
            const newFinalPrice = baseFinal + additional;
            const newThroughPrice = baseThrough + additional;

            // Обновляем все элементы с финальной ценой
            finalPrices.forEach(el => {
                el.textContent = formatPrice(newFinalPrice);
            });

            // Обновляем все элементы с зачеркнутой ценой
            throughPrices.forEach(el => {
                el.textContent = formatPrice(newThroughPrice);
            });
        }

        updatePrices();
        toggle.addEventListener('change', updatePrices);
    }
});