document.addEventListener('DOMContentLoaded', () => {
    console.log('✅ main5.js cargado y página de FAQ lista.');
    const faqItems = document.querySelectorAll('.faq-item')
    faqItems.forEach(item => {
        const question = item.querySelector('.faq-question');
        question.addEventListener('click', () => {
            faqItems.forEach(otherItem => {
                if (otherItem !== item) {
                    otherItem.classList.remove('active');
                }
            });
            item.classList.toggle('active');
        });
    });

});
