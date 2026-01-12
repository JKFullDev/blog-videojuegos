<div class="clearfix"></div>
</div>
<footer id="pie">
    <p>&copy; <?= date('Y') ?> Juan Carlos Alonso Hernando. Todos los derechos reservados</p>
</footer>
<script>
    // 1. Menú Categorías
    const menuBtn = document.querySelector('#menu-movil-btn');
    const menuLista = document.querySelector('#menu-lista');

    if (menuBtn) {
        menuBtn.addEventListener('click', () => {
            menuLista.classList.toggle('desplegado');
        });
    }

    // 2. Sidebar Usuario
    const userBtn = document.querySelector('#user-movil-btn');
    const sidebarBloques = document.querySelectorAll('#sidebar .bloque');

    if (userBtn) {
        userBtn.addEventListener('click', () => {
            // Alternamos la clase en cada bloque del sidebar
            sidebarBloques.forEach(bloque => {
                bloque.classList.toggle('desplegado');
            });
        });
    }
</script>
</body>

</html>