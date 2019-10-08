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
										<a href="{{ Url('/perfil') }} " ><i class="fa fa-user"></i> Perfil</a>
									</li>
									<li class="active">
										<a href="{{ Url('/publicacion') }} " ><i class="fa fa-file-powerpoint-o"></i> Publicación</a>
									</li>


								</ul>
								<div class="tab-content">

									<div id="publicacion" class="tab-pane active">


							<div class="row">
								<div class="col-sm-6">
									<div class="mb-md">
										<a href="/publicacion_new">
										    <button id="addToTable" class="btn btn-primary">Agregar Publicación </button>
                                        </a>
                                    </div>
								</div>
							</div>
										<div class="table-responsive">
							<table class="table table-bordered table-striped mb-none" id="datatable-editable">
								<thead>

									<tr>
										<th>Título</th>
										<th>Categoría</th>
										<th>Visitas</th>
										<th>Visible</th>
										<th>Editar/Eliminar</th>
									</tr>
								</thead>
								<tbody>
									<tr class="gradeX">
										<td>Título</td>
										<td>Categoría</td>
										<td>Visitas</td>
										<td>Visible</td>
										<td class="actions">

											<a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>
											<a href="#" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
										</td>
									</tr>
									<tr class="gradeX">
										<td>Título</td>
										<td>Categoría</td>
										<td>Visitas</td>
										<td>Visible</td>
										<td class="actions">

											<a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>
											<a href="#" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
										</td>
									</tr>
									<tr class="gradeX">
										<td>Título</td>
										<td>Categoría</td>
										<td>Visitas</td>
										<td>Visible</td>
										<td class="actions">

											<a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>
											<a href="#" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						</div>






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

