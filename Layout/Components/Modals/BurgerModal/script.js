document.addEventListener('DOMContentLoaded', () => {
    const link = document.querySelectorAll('.burger-modal__link')
    const burgerModal = document.querySelector('.burger-modal')
    const overlayModal = document.querySelector('.modal-overlay')
    const btnClose = document.querySelector('.burger-modal__button-close')

    link.forEach((link) => {
        link.addEventListener('click', function() {
            burgerModal.classList.remove('.active')
            burgerModal.style.display = 'none'
            overlayModal.classList.remove('.active')
            overlayModal.style.display = 'none'
            document.documentElement.style.overflow = 'auto'
        })
    })

    btnClose.addEventListener('click', (e) => {
        if (e.target) {
            burgerModal.classList.remove('.active')
            burgerModal.style.display = 'none'
            overlayModal.classList.remove('.active')
            overlayModal.style.display = 'none'
            document.documentElement.style.overflow = 'auto'
        }
    })
})