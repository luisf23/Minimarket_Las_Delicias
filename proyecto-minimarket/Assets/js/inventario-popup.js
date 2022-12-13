
        /* POPUP DE BOTON AGREGAR PRODUCTO */

var btnAbrirPopup_product = document.getElementById("btn_agregar-product"),
    btnAbrirPopup_prov = document.getElementById("btn_agregar-product"),
    overlay = document.getElementById("overlay"),
    popup = document.getElementById("popup"),
    btnCerrarPopup = document.getElementById("btn_cerrar-popup");

btnAbrirPopup_product.addEventListener('click', function(){
    overlay.classList.add("active");
});

btnAbrirPopup_prov.addEventListener('click', function(){
    overlay.classList.add("active");
});

btnCerrarPopup.addEventListener('click', function(){
    overlay.classList.remove("active");
});

        /* POPUP DE BOTON AGREGAR PROVEEDOR */


