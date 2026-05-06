document.addEventListener('DOMContentLoaded', () => {
    const up = document.querySelector('.footer__up')

    up.addEventListener('click', () => {
        window.scrollTo({
            top: 0,
            behavior: "smooth"
        })
    })
})