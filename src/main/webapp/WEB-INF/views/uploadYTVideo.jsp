<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%><head>

<section class="padding albumsHome">
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<div class=" paddingBottom">
				<h1>Add Youtube Iframe Source</h1>
					<form name="formAlbum" action="uploadYTVideo" method="post"
						enctype="multipart/form-data" class="comment-form">
						<input type="text" name="name" id="name" style="padding: 10px"
							placeholder="Enter Title"> <input type="text" name="tags"
							id="tags" style="padding: 10px" placeholder="Enter Tags">
						<input type="text" name="iframe" id="iframe" style="padding: 10px"
							placeholder="Enter Iframe src">

						<p class="form-submit" align="right">
							<input name="submit" type="submit" id="submit" value="Submit">
						</p>
					</form>
				</div>
			</div>
			<!-- end col-sm-12 -->
		</div>
	</div>
</section>
<!-- end content area -->