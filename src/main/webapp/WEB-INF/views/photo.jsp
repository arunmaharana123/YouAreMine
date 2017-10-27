<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%><head>

<section class="aquraFilter" style="padding-top: 6em" id="content">
	<div class="container" style="padding: 2em;">
		<!-- start blog-filter-category -->
		<div class="categories" style="padding-bottom: 0rem">
			<ul class="clearfix">
				<li><a href="<c:url value='/photocategory/Actors' />">Actors</a></li>
				<li><a href="<c:url value='/photocategory/Actress' />">Actress</a></li>
				<li><a href="<c:url value='/photocategory/Movie Poster' />">Movie
						Posters</a></li>
				<li><a href="<c:url value='/photocategory/Abstract' />">Abstract</a></li>
				<li><a href="<c:url value='/photocategory/Sci-Fi' />">Sci-Fi</a></li>
				<li><a href="<c:url value='/photocategory/Vehicles' />">Vehicles</a></li>
				<li><a href="<c:url value='/photocategory/Flowers' />">Flowers</a></li>
				<li><a href="<c:url value='/photocategory/Cartoon' />">Cartoon</a></li>
				<li><a href="<c:url value='/photocategory/Background' />">Background</a></li>
				<li><a href="<c:url value='/photocategory/Nature' />">Nature</a></li>
				<li><a href="<c:url value='/photocategory/HD' />">HD</a></li>
				<c:if test="${USERROLE eq 'ADMIN' }">
					<li><a href="<c:url value='/addPhoto' />">Upload Images</a></li>
				</c:if>
			</ul>
		</div>
	</div>
</section>

<!-- =============== START GALLERY SECTION ================ -->
<section class=" gallerySection" id="content">
	<div class="container" style="padding: 0;">
		<div class="col-sm-12">
			<!-- Content Container -->
			<div class="content-container clearfix">
				<!-- Single Album Container -->
				<div class="single-photo-album-container">
					<div class="row">
						<!-- Single Album Article -->
						<c:forEach items="${PhotoList }" var="photo" varStatus="loop">
							<!-- Single Album Article -->
							<article class="col-sm-3 col-xs-6">
								<!-- Single Album Contant Container -->
								<figure>
									<!-- Single Album Image -->
									<figcaption>
										<div class="hovereffect" style="height: 310px; margin: 5px;">
											<img class="img-responsive" style="height: 300px"
												src="${photo.path }" alt="">
											<div class="overlay">
												<a class="info lightbox" href="${photo.path }"></a>
											</div>
										</div>
									</figcaption>
								</figure>
							</article>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end container -->
</section>
<!-- =============== END GALLERY SECTION ================ -->
<!-- end content area -->
<c:if test="${fn:length(PhotoList) == 40 }">

	<div class="container" align="right">
		<ul class="pagination pagination-lg">
			<li><a
				href="<c:url value='/photocategory/${Category }?page=${PageCount }' />"
				class="but_ok_2"><i class="fa fa-arrow-right fa-lg"></i>&nbsp;
					Next</a></li>
		</ul>
	</div>
</c:if>
<c:if test="${fn:length(PhotoList) != 40 }">
	<div class="container" align="right">
		<ul class="pagination pagination-lg">
			<li><a href="#" class="but_ok_2"><i
					class="fa fa-arrow-right fa-lg"></i>&nbsp; No More Photo</a></li>
		</ul>
	</div>
</c:if>
<section class="aquraFilter" style="padding-top: 6em" id="content">
	<div class="container" style="padding: 2em;">
		<!-- start blog-filter-category -->
		<div class="categories" style="padding-bottom: 0rem">
			<ul class="clearfix">
				<li><a href="<c:url value='/photocategory/Actors' />">Actors</a></li>
				<li><a href="<c:url value='/photocategory/Actress' />">Actress</a></li>
				<li><a href="<c:url value='/photocategory/Movie Poster' />">Movie
						Posters</a></li>
				<li><a href="<c:url value='/photocategory/Abstract' />">Abstract</a></li>
				<li><a href="<c:url value='/photocategory/Sci-Fi' />">Sci-Fi</a></li>
				<li><a href="<c:url value='/photocategory/Vehicles' />">Vehicles</a></li>
				<li><a href="<c:url value='/photocategory/Flowers' />">Flowers</a></li>
				<li><a href="<c:url value='/photocategory/Cartoon' />">Cartoon</a></li>
				<li><a href="<c:url value='/photocategory/Background' />">Background</a></li>
				<li><a href="<c:url value='/photocategory/Nature' />">Nature</a></li>
				<li><a href="<c:url value='/photocategory/HD' />">HD</a></li>
				<%-- <li><a href="<c:url value='/addPhoto' />">Upload Images</a></li> --%>
			</ul>
		</div>
	</div>
</section>