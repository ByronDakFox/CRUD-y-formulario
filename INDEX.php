<?php require_once("conexion/conecta.php") ?>
<!DOCTYPE html>
<html>
<head>
	<title>EXAMEN LP</title>
	        <script type="text/javascript" src="js/jquery.js"></script>
	        <script type="text/javascript" src="js/bootstrap.js"></script>
	        <script type="text/javascript" src="js/funciones.js"></script>
			    <script type="text/javascript" src="js/styleLP.js"></script>

			<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
            <link rel="stylesheet" type="text/css" href="css/style.css">
<body style="background-color:#B2DFDB;">
<div id="datos">
	

	<div align="center">
		<br>
		<button type="button" class="btn btn-danger pull-left"  onclick="nuevo()">Insertar Datos</button>
	</div>
	<br>

	<div class="input-group mb-3" >
		<div class="input-group-prepend">
			<div  class="input-group-text" align="center">
				 <div id="nuevo" style ="display: none">
				<form >
					<div  class="input-group-prepend">
						<input type="" name="" value="NOMBRE:">
						<input type="text" class="form-control" name="nombre" id="nombreId">
					</div>
					<div  class="input-group-prepend">
						<input type="" name="" value="CEDULA:">
						<input type="text" class="form-control" name="cedula" id="cedulaId">
					</div>
					<div  class="input-group-prepend">
						<input type="" name="" value="DIRECCION:">
						<input type="text" class="form-control" name="direccion" id="direccionId">
					</div>
					<div  class="input-group-prepend">
						<input type="" name="" value="TELEFONO:">
						<input type="text" class="form-control" name="telefono" id="telefonoId">
					</div>
					<div  class="input-group-prepend">
						<input type="" name="" value="ROL:">
						<input type="text" class="form-control" name="rol" id="rolId">
					</div>
					<br>
					<div class="input-group-prepend" align="center">
						 <button type="button" class="btn btn-danger pull-left" data-dismiss="modal" onclick="insertar()">Insertar</button>
					</div>
				</form>
			</div>
		</div>
	</div>
  </div>
  </div>




  <div class="input-group mb-3">
		<div class="input-group-prepend">
			<div  class="input-group-text">
  	<table class="table table-hover table-bordered table-dark" class="table table-sm  table-bordered text-warning font-weight-bold">
   	<thead style="color: yellow">
                <th nowrap style="text-align:center">#</th>
                <th nowrap style="text-align:center">NOMBRE</th>
                <th nowrap style="text-align:center">CEDULA</th>
                <th nowrap style="text-align:center">DIRECCION</th>
                <th nowrap style="text-align:center">TELEFONO</th>
                <th nowrap style="text-align:center">ROL</th>
                <th scope="col" colspan="2" nowrap style="text-align:center">AJAX</th>
    </thead>
   </table>
  </div>
  </div>
  </div>

</body>

<script type="text/javascript">
	//SELECT * FROM tbl_usuarios a,tbl_telefono b,tbl_direccion c,tbl_rol d WHERE 1
	//$HTML;
			//$sql="SELECT * FROM 
			//$resultado=mysqli_query($conn,$sql) or die("Algo ha ido mal en la consulta a la base de datos");

</script>

<script >
		var cont=1;
		function nuevo() {
			if (cont==1) {
			document.getElementById('nuevo').style.display="block";
			cont=2;
		}else{
			document.getElementById('nuevo').style.display="none";
			cont=1;
		}
		}
</script>
<script >
		function insertar(){
		
			var n=document.getElementById("nombreId").value;
			var c=document.getElementById("cedulaId").value;
			var d=document.getElementById("direccionId").value;
            var t=document.getElementById("telefonoId").value;
			var r=document.getElementById("rolId").value;
      

			$.ajax({
			url: 'http://localhost/LP_EXAMEN/CRUD/INSERT.php',
			type: 'POST',
			data: {
      'nombreId': n,
      'cedulaId': c,
      'direccionId': d,
      'telefonoId': t,
      'rolId': r,
      },
      success: function(response){
      $('#nombreId').val('');
      $('#cedulaId').val('');
      $('#direccionId').val('');
      $('#telefonoId').val('');
      $('#rolId').val('');
      nuevoA();
      $("#datos").load(" #datos");
      }
      }); 
       
		}

	</script>


</html>

























