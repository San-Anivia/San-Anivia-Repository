document.addEventListener('DOMContentLoaded', () => {
    console.log('✅ main.js cargado y DOM listo.');
});
const menuItems = document.querySelectorAll('.red-bar-menu .menu-item');
menuItems.forEach(item => {
    item.addEventListener('click', (event) => {
        const text = item.querySelector('.menu-text').textContent;
        console.log(`Menú clicado: ${text}`);
        switch (text) {
            case 'Preguntas':
                window.location.href = 'index5.html';
                break;
            case 'Rutas':
                window.location.href = 'index4.html';
                break;
            case 'Perfil':
                window.location.href = 'index2.html';
                break;
            case 'Contáctanos':
                window.location.href = 'index3.html';
                break;
        }
    });
});