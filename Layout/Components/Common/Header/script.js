document.addEventListener('DOMContentLoaded', () => {
    const header = document.querySelector('.header__container')
    const content = document.querySelector('.header__content')
    let lastScrollY = window.scrollY

    window.addEventListener('scroll', () => {
        const currentScrollY = window.scrollY

        if (currentScrollY >= 100) {
            header.style.background = 'var(--color1-main)'
            content.classList.add('scroll')
        } else {
            header.style.background = 'var(--gray-lighter)'
            content.classList.remove('scroll')
        }

        if (currentScrollY > lastScrollY && currentScrollY > 0) {
            header.style.transform = 'translateY(-100%)'
            header.style.transition = 'transform 0.3s ease'
        } else {
            header.style.transform = 'translateY(0)'
            header.style.transition = 'transform 0.3s ease'
        }

        lastScrollY = currentScrollY
    })
})