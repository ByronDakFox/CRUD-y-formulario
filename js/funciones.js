var valores=[];
mostrarUsuarios();

function eliminar(id){
    if(confirm("Desea eliminar?"))
{
	$.ajax({
		data:{"id":id},
		type:"POST",
		dataType:"json",
		url:"http://localhost/SegundaPLP/php/deleteUsuario.php"
	}).done(function(data,textStatus,jqXHR){
		if(console && console.log){
			console.log(data.validacion);
			window.location.href="index.php";
			//$('#deleteProductModal');
		}	
	}).fail(function(jqXHR, textStatus, errorTrhown){
		if(console && console.log){
			console.log(errorTrhown);
			console.log(jqXHR);
			console.log(textStatus);
		}
	});
}
}

function mostrarUsuarios() {
    $.ajax({
        type: "POST",
        dataType: "json",
        url: "http://localhost/SegundaPLP/php/selectUsuarios.php"
    }).done(function (data, textStatus, jqXHR) {
        if (console && console.log) {
            var html="";
            var datos="";
            $('#tabla_usuarios').empty();
            for(var i=0 in data.usuarios){
                datos="*"+data.usuarios[i].ID+"*"+data.usuarios[i].NOMBRE+"*"+data.usuarios[i].APELLIDO+"*"+data.usuarios[i].CEDULA+"*"+data.usuarios[i].FECHA;
                html+='<tr><td nowrap style="text-align:center">'+data.usuarios[i].ID+'</td>';
                html+='<td nowrap style="text-align:center">'+data.usuarios[i].NOMBRE+'</td>';
                html+='<td nowrap style="text-align:center">'+data.usuarios[i].APELLIDO+'</td>';
                html+='<td nowrap style="text-align:center">'+data.usuarios[i].CEDULA+'</td>';
                html+='<td nowrap style="text-align:center">'+data.usuarios[i].FECHA+'</td>';
                html+='<td nowrap style="text-align:center">';
                html+='<button class="btn btn-info"';
                html+='title="obtenerDatos" onclick="obtenerDatos(&quot;'+datos+'&quot;)"';
                html+='>Editar&nbsp;<i class="far fa-edit"></i></button>&nbsp;';
                html+='<button class="btn btn-danger"';
                html+='<button class="btn btn-info"';
                html+='title="obtenerDatos" onclick="eliminar('+data.usuarios[i].ID+')"';
                html+='>Eliminar&nbsp;<i class="fas fa-trash-alt"></i></button></td></tr>';   
            }
            $("#tabla_usuarios").append(html);
        }
    }).fail(function (jqXHR, textStatus, errorTrhown) {
        if (console && console.log) {
            console.log(errorTrhown);
            console.log(jqXHR);
            console.log(textStatus);
        }
    });
}


function obtenerDatos(datos){
    console.log("entra");
    valores=[];
    valores=datos.split("*");
    $('#idP').val(valores["1"]);
    $('#nombre2Id').val(valores["2"]);
    $('#apellido2Id').val(valores["3"]);
    $('#cedula2Id').val(valores["4"]);
    $('#fecha2Id').val(valores["5"]);
    $("#modal-default").modal("show");
}

function update(){

    var id=$('#idP').val();
    var nombre=$('#nombre2Id').val();
    var apellido=$('#apellido2Id').val();
    var cedula=$('#cedula2Id').val();
    var fechaN=$('#fecha2Id').val();

    $.ajax({
        data:{"id":id, "nombre":nombre, "apellido":apellido, "cedula":cedula, "fecha":fechaN},
        type:"POST",
        dataType:"json",
        url:"http://localhost/SegundaPLP/php/updateUsuario.php"
    }).done(function(data,textStatus,jqXHR){
        if(console && console.log){
            console.log(data.validacion);
            window.location.href="index.php";
        }   
    }).fail(function(jqXHR, textStatus, errorTrhown){
        if(console && console.log){
            console.log(errorTrhown);
            console.log(jqXHR);
            console.log(textStatus);
        }
    });
}
/*function actualizar($nombre,$apellido,$cedula,$fecha) {
        $("tbody").empty();
            $.ajax({
            	data:{"id":id},
                type: "POST",
                url: "http://localhost/SegundaPLP/php/updateUsuarios.php",
                dataType: "json",
                success: function (data) {
                    $.each(data, function (key, item) {
                        $("tbody").append("<tr><td>ID</td><td>NOMBRE</td><td>APELLIDO</td><td>4</td><td>5</td></tr>");
                    });
                }
            })
        var oTable = $('#myTable').dataTable(); // Nothing happens
        var oTable = $('#myTable').dataTable({ // Cannot initialize it again error
                "aoColumns": [
                  { "bSortable": false },
                  null, null, null, null
                ]
            });
        }

        */

