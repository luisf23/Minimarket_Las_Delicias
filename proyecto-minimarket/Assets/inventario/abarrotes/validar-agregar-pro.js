const  formulario = document.getElementById('form-popup'); 
const  inputs  =  document.querySelectorAll('#form-popup input');

const expresiones = {
	name_product: /^[a-zA-Z1-9\s]{1,30}$/,
	precio: /^[\d,]{2,16}$/,
	descripcion:/^[a-zA-Z1-9\0\ñ\s-_]{1,80}$/,
	existencias:/(^\d{1,5}$)/
    
};

const campos = {
	name_product: true, 
	precio: false,
	descripcion:false,
	existencias:false
}

const ValidarForm = (e) => {
	switch (e.target.name){
		case 'name-product': 
			ValidarCampo(expresiones.name-product,e.target,'name_product');
		break;
		case 'precio': 
		ValidarCampo(expresiones.precio,e.target,'precio');
		break;
		case 'descripcion': 
		ValidarCampo(expresiones.descripcion,e.target,'descripcion');
		break;
		case 'existencias': 
		ValidarCampo(expresiones.existencias,e.target,'existencias');
		break;
	};			
};

inputs.forEach ((input)=>{
	input.addEventListener('keyup', ValidarForm)
	input.addEventListener('blur', ValidarForm)
});

const ValidarCampo= (expresion,input,campo)=>{
	if (expresion.test(input.value)){
		document.getElementById(`grupo_${campo}`).classList.remove('grupo-incorrecto');
		document.querySelector(`#grupo_${campo} .mensaje-error`).classList.remove('mensaje-error-active');
		campos[campo]=true;
		
	} else {
		document.getElementById(`grupo_${campo}`).classList.add('grupo-incorrecto');
		document.querySelector(`#grupo_${campo} .mensaje-error`).classList.add('mensaje-error-active');
		campos[campo]=false;
	};
}

formulario.addEventListener ('click', function(){
/* 	e.preventDefault();
 */	if (campos.name-product && campos.precio && campos.descripcion && campos.existencias) {
		if (window.history.replaceState) { // verificamos disponibilidad
		window.history.replaceState(null, null, window.location.href);
		}
			formulario.reset();
			document.getElementById('error-enviar').classList.remove('error-enviar-active');
	} else {
		if (window.history.replaceState) { // verificamos disponibilidad
			window.history.replaceState(null, null, window.location.href);
			}
		document.getElementById('error-enviar').classList.add('error-enviar-active');
	}
})