<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%><head>
<section class="padding albumsHome">
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<div class=" paddingBottom">
					<span class="heading-t3"></span>
					<h2 style="margin: 10px;">SignUp OR Login</h2>
					<button type="button" class="btn btn-default" data-toggle="modal"
						data-target="#myModal">Login</button>
				</div>

			</div>
			<!-- end col-sm-12 -->
		</div>
	</div>
</section>
<!-- end content area -->

<div class="modal fade" id="myModal" role="dialog">
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