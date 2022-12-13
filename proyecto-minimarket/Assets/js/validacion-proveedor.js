const  formulario = document.getElementById('form-popup'); 
const  inputs  =  document.querySelectorAll('#form-popup input');

const expresiones = {
	razon_social: /^[a-zA-Z1-9\s]{1,40}$/,
	nit: /^[\d]{8,9}$/,
	telefono:/^[\d]{0,12}$/,
	celular:/^[\d]{0,12}$/,
	direccion:/^[a-zA-Z1-9\s\#\-\.]{5,30}$/,
    correo:/^[a-zA-Z1-9\s\S\@]{10,40}$/
};

const campos = {
	razon_social:false,
	nit: false,
	telefono:false,
	celular:false,
	direccion:false,
    correo:false
}

const ValidarForm = (e) => {
	switch (e.target.name){
		case 'razonS': 
			ValidarCampo(expresiones.razon_social,e.target,'razonS');
		break;
		case 'nit': 
		ValidarCampo(expresiones.nit,e.target,'nit');
		break;
		case 'telefono': 
		ValidarCampo(expresiones.telefono,e.target,'telefono');
		break;
		case 'celular': 
		ValidarCampo(expresiones.celular,e.target,'celular');
		break;
		case 'direccion': 
		ValidarCampo(expresiones.direccion,e.target,'direccion');
		break;
        case 'correo': 
		ValidarCampo(expresiones.correo,e.target,'correo');
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

formulario.addEventListener ('submit',(e)=>{
/* 	
 */	if (campos.nit && campos.telefono && campos.celular && campos.direccion && campos.correo) {
		if (window.history.replaceState) { // verificamos disponibilidad
		window.history.replaceState(null, null, window.location.href);
		}
		formulario.reset();
		document.getElementById('error-enviar').classList.remove('error-enviar-active');
	} else {
		document.getElementById('error-enviar').classList.add('error-enviar-active');
	}
})