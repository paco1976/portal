@extends('layouts.panel')

@section('main')

			<div role="main" class="main">


				<section class="page-top">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<ul class="breadcrumb">
									<li><a href="#">Inicio</a></li>
									<li class="active">Panel de Control</li>
								</ul>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<h1>MI PUBLICACION</h1>
							</div>


						</div>
					</div>
				</section>



				<div class="container">





					<div class="row">
						<div class="col-md-9">
							<div class="tabs">
								<ul class="nav nav-tabs">
									<li>
										<a href="/perfil" ><i class="fa fa-user"></i> Perfil</a>
									</li>
									<li class="active">
										<a href="/publicacion" ><i class="fa fa-file-powerpoint-o"></i> Publicación</a>
									</li>
									<li>

									</li>

								</ul>
								<div class="tab-content">

									<div id="publicacion" class="tab-pane active">

                            <form class="form-horizontal form-bordered" action="#">
							<div class="panel-body">
									<form class="form-horizontal form-bordered" action="#">
										<div class="form-group">
											<label class="col-md-3 control-label">Título</label>
											<div class="col-md-6">
                                                <!-- multiple="multiple" -->
												<select class="form-control"  data-plugin-multiselect id="ms_example0">
													<option value="...">Electricista</option>
													 <option value="...">Gasista</option>
														<option value="...">Herrero/a</option>
														<option value="...">Plomero/a</option>
														<option value="...">Soldador/a</option>
														<option value="...">Técnico/a aire acondicionado</option>
														<option value="...">Técnico/a de electrodomesticos</option>
														<option value="...">Esteticista corporal</option>
														<option value="...">Esteticista facial</option>
														<option value="...">Manicura y depilador/a</option>
														<option value="...">Maquillador/a</option>
														<option value="...">Peluquero/a</option>
														<option value="...">Diseñador/a web y gráfico</option>
														<option value="...">Técnico/a de PC</option>
														<option value="...">Bicicletero/a</option>
														<option value="...">Diseño, costura, arreglos y otros</option>
														<option value="...">Marroquinero/a</option>
														<option value="...">Realizador/a de video</option>
														<option value="...">Sonidista</option>
														<option value="...">Catering, repostería y otros</option>
												</select>


											</div>
											<!-- <button id="ms_example7-toggle" class="btn btn-primary">Seleccionar</button> -->
										</div>




										<div class="form-group">
											<label class="col-md-3 control-label">CFP</label>
											<div class="col-md-6">
												<select class="form-control" data-plugin-multiselect id="ms_example0">
													<option value="1">CFP N° 1</option>
													<option value="4">CFP N° 4</option>
													<option value="6">CFP N° 6</option>
													<option value="7">CFP N° 7</option>
													<option value="9">CFP N° 9</option>
													<option value="24">CFP N° 24</option>
													<option value="36">CFP N° 36</option>

												</select>


											</div>
										<!-- <button id="ms_example7-toggle" class="btn btn-primary">Seleccionar</button> -->
										</div>





                                </div>
                                <div class="form-group">
                                <label class="col-md-3 control-label">Descripción</label>
                                    <div class="col-md-6">
                                        <textarea id="input" style="width:100%; height:200px"></textarea>
                                    </div>
                                </div>

<script type="text/javascript">
new TINY.editor.edit('editor',{
	id:'input',
	width:600,
	height:175,
	cssclass:'te',
	controlclass:'tecontrol',
	rowclass:'teheader',
	dividerclass:'tedivider',
	controls:['bold','italic','underline','strikethrough','|','subscript','superscript','|',
			  'orderedlist','unorderedlist','|','outdent','indent','|','leftalign',
			  'centeralign','rightalign','blockjustify','|','unformat','|','undo','redo','n',
			  'font','size','style','|','image','hr','link','unlink','|','cut','copy','paste',],
	footer:true,
	fonts:['Verdana','Arial','Georgia','Trebuchet MS'],
	xhtml:true,
	cssfile:'style.css',
	bodyid:'editor',
	footerclass:'tefooter',
	resize:{cssclass:'resize'}
});
</script>





				<a href="#" class="btn btn-default fileupload-new" data-dismiss="fileupload">Subir imágenes de tu trabajo </a>

				<div class="alert alert-info">
                    <input type="file" name="file">
                    <input type="file" name="file">
                    <input type="file" name="file">
                    <input type="file" name="file">
                    <input type="file" name="file">
					<strong>Puede subir como máximo 5 imagenes</strong>
				</div>


										<div class="form-group">
											<label class="col-md-3 control-label">Elegir Barrio</label>
											<div class="col-md-6">
												<select class="form-control" multiple="multiple" data-plugin-multiselect id="ms_example0">
													<option value="...">Agronomía</option>
<option value="...">Almagro</option>
<option value="...">Balvanera</option>
<option value="...">Barracas</option>
<option value="...">Belgrano</option>
<option value="...">Boedo</option>
<option value="...">Caballito</option>
<option value="...">Chacarita</option>
<option value="...">Coghlan</option>
<option value="...">Colegiales</option>
<option value="...">Constitución</option>
<option value="...">Flores</option>
<option value="...">Floresta</option>
<option value="...">La Boca</option>
<option value="...">La Paternal</option>
<option value="...">Liniers</option>
<option value="...">Mataderos</option>
<option value="...">Monte Castro</option>
<option value="...">Monserrat</option>
<option value="...">Nueva Pompeya</option>
<option value="...">Núñez</option>
<option value="...">Palermo</option>
<option value="...">Parque Avellaneda</option>
<option value="...">Parque Chacabuco</option>
<option value="...">Parque Chas</option>
<option value="...">Parque Patricios</option>
<option value="...">Puerto Madero</option>
<option value="...">Recoleta</option>
<option value="...">Retiro</option>
<option value="...">Saavedra</option>
<option value="...">San Cristóbal</option>
<option value="...">San Nicolás</option>
<option value="...">San Telmo</option>
<option value="...">Vélez Sársfield</option>
<option value="...">Versalles</option>
<option value="...">Villa Crespo</option>
<option value="...">Villa del Parque</option>
<option value="...">Villa Devoto</option>
<option value="...">Villa General Mitre</option>
<option value="...">Villa Lugano</option>
<option value="...">Villa Luro</option>
<option value="...">Villa Ortúzar</option>
<option value="...">Villa Pueyrredón</option>
<option value="...">Villa Real</option>
<option value="...">Villa Riachuelo</option>
<option value="...">Villa Santa Rita</option>
<option value="...">Villa Soldati</option>
<option value="...">Villa Urquiza</option>
												</select>


											</div>
											<!-- <button id="ms_example7-toggle" class="btn btn-primary">Seleccionar</button> -->
										</div>


                                    <button type="submit" class="btn btn-primary">Guardar publicación</button>
									<!-- <a href="#" class="btn btn-primary" data-dismiss="fileupload">Guardar modificaciones</a> -->


								</div>
                            </form>
								</div>
							</div>
						</div>


						<div class="col-md-3">
						<button class="btn btn-info btn-small " data-toggle="modal" data-target="#myModal">
								<i class="fa fa-question-circle"></i> ¿Como funciona?
							</button>

							<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
											<h4 class="modal-title" id="myModalLabel">Qué hago?</h4>
										</div>
										<div class="modal-body">

											<h4 class="panel-title">
												<strong>Cómo cambio mis datos?</strong>
										</h4>
											<div class="panel-body">
										  Entra en <a href="#">Modificar los detalles</a> y actualizá tu perfil. </div>


											<h4 class="panel-title">
												<strong>Cómo creo mis publicaciones?</strong>
										</h4>

											<div class="panel-body">
										  1. Agregá los cursos que hiciste en el CFP clickeando en el menú Títulos.<br>
2. Una vez que hayas cargado tus tíulos, ya podés crear tus publicaciones clickeando en el menú Publicaciones. </div>





                                        <div class="alert alert-info">
								<strong>Las publicaciones no serán publicadas hasta que los títulos que cargaste sean validados por la administración del CFP.</strong>
							</div>


										</div>





										<div class="modal-footer">
											<button type="button" class="btn btn-primary" data-dismiss="modal">Entendido</button>

										</div>
									</div>
								</div>
							</div>


						</div>





					</div>






				</div>

			</div>

@endsection
