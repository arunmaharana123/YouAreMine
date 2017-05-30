<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%><head>
<style type="text/css">
th {
	color: black;;
	font-weight: bold;
}
</style>


<section class="padding albumsHome">
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<div class=" paddingBottom">
					<span class="heading-t3"></span>
					<h2 style="margin: 10px;">Upload Music Albums</h2>
					<div align="right">
						<button style="margin-bottom: 20px;" type="button"
							class="btn btn-default" data-toggle="modal"
							data-target="#addAlbum">Add Album</button>
					</div>
					<table class="table">
						<thead>
							<tr>
								<th>#</th>
								<th>Album Name</th>
								<th>Release Date</th>
								<th>Songs</th>
								<th>Status</th>
								<th>Update Album</th>
								<th>Add Songs</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${Albums }" var="albm" varStatus="loop">
								<tr>
									<td>${loop.count }</td>
									<td>${albm.albumName }</td>
									<td>${albm.date }</td>
									<td>${albm.totalSongs }&nbsp;songs</td>
									<td>${albm.status }</td>
									<td><button type="button" class="btn btn-default"
											data-toggle="modal"
											data-target="#myModalAlbumUpdate${loop.count }">Update
											Album</button></td>
									<td><button type="button" class="btn btn-default"
											data-toggle="modal" data-target="#myModal${loop.count }">Add
											Music</button></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<!-- href="<c:url value='/uploadMusic?albumid=${albm.id }' />" -->
					<c:forEach items="${Albums }" var="albm" varStatus="loop">
						<!-- Modal -->
						<div class="modal fade" id="myModal${loop.count }" role="dialog">
							<div class="modal-dialog">

								<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4 class="modal-title">${albm.albumName }</h4>
									</div>
									<div class="modal-body">
										<form name="form${loop.count }"
											action="uploadMusic?albumid=${albm.id }" method="post"
											enctype="multipart/form-data" class="comment-form">
											<div
												style="width: 100%; height: 45px; margin-bottom: 40px; border: 1px solid #ff0000; vertical-align: middle;">
												<input type="file" name="filename" id="name"
													multiple="multiple" style="padding: 10px" accept="audio/*">
											</div>
											<p class="form-submit">
												<input name="submit" type="submit" id="submit"
													value="Submit">
											</p>
										</form>
										<!-- end contactForm -->
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Close</button>
									</div>
								</div>

							</div>
						</div>

						<div class="modal fade" id="myModalAlbumUpdate${loop.count }"
							role="dialog">
							<div class="modal-dialog">

								<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4 class="modal-title">${albm.albumName }</h4>
									</div>
									<div class="modal-body">
										<form name="formUpdate${loop.count }"
											action="updateAlbum?albumid=${albm.id }" method="post"
											enctype="multipart/form-data" class="comment-form">
											<input type="text" name="name" id="name"
												value="${albm.albumName }" style="padding: 10px"
												placeholder="Enter AlbumName">
											<div
												style="width: 100%; height: 45px; margin-bottom: 40px; border: 1px solid #ff0000; vertical-align: middle;">
												<input type="file" name="filename" id="name"
													style="padding: 10px" accept="image/*">
											</div>
											<p class="form-submit">
												<input name="submit" type="submit" id="submit"
													value="Submit">
											</p>
										</form>
										<!-- end contactForm -->
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Close</button>
									</div>
								</div>

							</div>
						</div>
					</c:forEach>
				</div>

			</div>
			<!-- end col-sm-12 -->
		</div>
	</div>
</section>
<!-- end content area -->

<div class="modal fade" id="addAlbum" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">New Album</h4>
			</div>
			<div class="modal-body">
				<form name="formAlbum" action="addAlbum" method="post"
					enctype="multipart/form-data" class="comment-form">
					<input type="text" name="name" id="name" style="padding: 10px"
						placeholder="Enter AlbumName">
					<div
						style="width: 100%; height: 45px; margin-bottom: 40px; border: 1px solid #ff0000; vertical-align: middle;">
						<input type="file" name="filename" id="name" multiple="multiple"
							style="padding: 10px" accept="image/*">
					</div>
					<p class="form-submit">
						<input name="submit" type="submit" id="submit" value="Submit">
					</p>
				</form>
				<!-- end contactForm -->
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>

	</div>
</div>