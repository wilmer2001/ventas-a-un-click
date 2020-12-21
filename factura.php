<!DOCTYPE html>
<html>
<head>
	<title>Factura de compra</title>
	<link rel="stylesheet" href="estilos/factura.css" type="text/css" media=screen >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body id="body">
<h1 id="h1">Factura de compra</h1>
<div id="contenedor">
	<form class="form-group">
		<img src="imagenes/factura.JPG" id="imagen">
  <div class="form-group">
    <label id="bnombre" for="exampleInputName">Nombre completo</label>
    <input type="text" class="form-control" id="nombre" placeholder="Nombres y apellidos completos">
  <div class="form-group">
    <label id="bdireccion" for="exampleInputDireccion">Direccion</label>
    <input type="text" class="form-control" id="direccion" placeholder="Direccion">
  </div>
    <div class="form-group">
    <label id="btelefono" for="exampleInputTelefono">Telefono</label>
    <input type="text" class="form-control" id="telefono" placeholder="Telefono personal">
  </div>
    <div class="form-group">
    <label id="bidentificacion" for="exampleInputTelefono">Identificación</label>
    <input type="text" class="form-control" id="cedula" placeholder="Cedula de ciudadania">
  </div>
   <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
  <div class="btn-group mr-2" role="group" aria-label="First group">
    <button id="debito" type="button" class="btn btn-primary">Debito</button>
    <button id="credito" type="button" class="btn btn-primary">Credito</button>
  </div>
    <div class="form-group">
    <label id="bfecha" for="exampleInputTelefono">Fecha de expedición de la tarjeta</label>
    <input type="text" class="form-control" id="fecha" placeholder="Cedula de ciudadania">
  </div>
  <div>
  <button id="confirmar" type="submit" class="btn btn-primary">Confirmar Pago</button>
  </div>
</form>
</div>
</body>
</html>