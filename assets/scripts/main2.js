document.addEventListener('DOMContentLoaded', () => {
    const registroForm = document.getElementById('registroForm');
    if (registroForm) {
        registroForm.addEventListener('submit', (event) => {
            event.preventDefault();
            const nombre = document.getElementById('nombre').value;
            const apellido = document.getElementById('apellido').value;
            const email = document.getElementById('email').value;
            const celular = document.getElementById('celular').value;
            console.log('--- Datos del Registro ---');
            console.log('Nombre:', nombre);
            console.log('Apellido:', apellido);
            console.log('Email:', email);
            console.log('Celular:', celular);
            alert('¡Registro exitoso! (Revisa la consola para ver los datos).');
            registroForm.reset();
        });
    }
});