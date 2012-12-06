function clearRegisterForm() {
    $('#txtName').val("");
    $('#txtLastName').val("");
    $('#txtEmail').val("");
    $('#txtUsername').val("");
    $('#txtPassword').val("");
    $('#txtPasswordConfirm').val("");
}

function registerCompany(myDialog) {
    $('.imgLoading').show();
    $('#spanInputErrors').html("");
    
    var name = $.trim($('#txtName').val());
    var lastName = $.trim($('#txtLastName').val());
    var email = $.trim($('#txtEmail').val());
    var username = $.trim($('#txtUsername').val());
    var password = $.trim($('#txtPassword').val());
    var confirmPassword = $.trim($('#txtPasswordConfirm').val());
    
    var errorMessage = "";

    if (!name) errorMessage += 'Olvidaste ingresar tu Nombre...<br/>';
    if (!lastName) errorMessage += 'Olvidaste ingresar tu Apellido...<br/>';
    if (!email) errorMessage += 'Olvidaste ingresar tu Email o no es válido...<br/>';
    if (!username) errorMessage += 'Olvidaste ingresar tu Nombre de Usuario...<br/>';
    if (!password) errorMessage += 'Olvidaste ingresar tu Contraseña...<br/>';
    if (!confirmPassword) errorMessage += 'Olvidaste ingresar la Confirmación de la Contraseña...<br/>';
    if (password != confirmPassword) errorMessage += 'Las Contraseñas no coinciden...';

    if (errorMessage == "") {
        $.ajax({
        	url: baseUrl + "user/saveAjax",
            type: "POST",
            data: {	username: username,
            	   	password: password,
            		email: email,
            		name: name,
            		lastname: lastName
                  },
            dataType: "json",
            success: function (data) {
            	console.log(data);
                if (data.no_error == true) {
                    $('#errorMessageRegister').hide();
                    alert('Fuiste registrado exitosamente. Confirma tu solicitud haciendo click en el link, situado en el email que enviamos a tu cuenta.');
                    myDialog.dialog("close");
                    clearRegisterForm();
                } else {
                    $('#spanErrorMessageRegister').html('Error al realizar la operación.');
                    $('#errorMessageRegister').show();
                }
            },
            error: function (a,b,c) {
            	console.log(a);
            	console.log(b);
            	console.log(c);
                $('#spanErrorMessageRegister').html('Error al realizar la operación.');
                $('#errorMessageRegister').show();
            },
            complete: function () {
                $('.imgLoading').hide();
            }
        });
    } else {
        $('#spanInputErrors').html(errorMessage);
        $('.imgLoading').hide();
    }
}

if (typeof jQuery !== 'undefined') {
	/*
	(function($) {
		$('#spinner').ajaxStart(function() {
			$(this).fadeIn();
		}).ajaxStop(function() {
			$(this).fadeOut();
		});
	})(jQuery);
	*/
	
	$(document).ready(function(){
		$('#errorMessageRegister').hide();
	    $('.imgLoading').hide();
	    
		//POPUP FORMULARIO DE REGISTRO
	    $('#dialogRegister').dialog({
	        autoOpen: false,
	        width: 330,
	        modal: true,
	        buttons: {
	            "Cancelar": function () {
	                $(this).dialog("close");
	                clearRegisterForm();
	            },
	            "Registrarme!": function () {
	                registerCompany($(this));
	            }
	        }
	    });
	    
	    //EVENTO PARA EL BOTON QUE HABRE EL POPUP DE REGISTRO
	    $('#btnOpenRegister').click(function (e) {
	        e.preventDefault();
	        $('#dialogRegister').dialog('open');
	        return false;
	    });
		
	});
}

function deleteRow(action){
	if(confirm('¿Esta seguro que desea eliminar el registro seleccionado?')){
  		location.href = action; 
  	}
  	return;
}  