<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<script>
	var r = 255, g = 0, b = 0;
	var count = 1;
	var loop = 1;
	var myVar = setInterval(changeBgColor, 20);
	function changeBgColor() {
		var div = document.getElementById('changeColor').style;
		div.backgroundColor = "rgba(" + r + ", " + g + ", " + b + ", .1)";
		switch (count) {
		case 1:
			b++;
			break;
		case 2:
			r--;
			break;
		case 3:
			g++;
			break;
		case 4:
			b--;
			break;
		case 5:
			r++;
			break;
		case 6:
			g--;
			break;
		}
		if (loop == 255) {
			count++;
			if (count == 7) {
				count = 1;
			}
			loop = 1;
		} else {
			loop++;
		}
	}
</script>
<!-- =============== START ALBUM SINGLE ================ -->
<section class="albumSingle padding " id="changeColor"
	style="background-color: rgba(255, 0, 255, 0.1); background-size: 100% 100%; background-repeat: no-repeat;">
	<div class="container">
		<div class="sectionTitle " style="padding-bottom: 4rem;">
			<span class="heading-t3"></span>
			<h2>
				<a href="#">${AlbumCurrent.albumName}</a>
			</h2>
			<span class="heading-b3"></span>
		</div>
		<!-- end sectionTtile -->
		<div class="row">
			<div class="col-sm-8">
				<div class="jp-playlist">
					<div class="about-list clearfix">
						<span class="about-name">NAME</span> <span class="about-length">LENGTH</span>
					</div>
					<c:forEach items="${Albums }" var="albm" varStatus="loop">
						<div class="trak-item" data-audio="${albm.path }"
							data-artist="Tensnake" data-thumbnail="${albm.albumImage }">
							<audio preload="metadata" src="${albm.path }"
								title="${albm.title }"></audio>
							<div class="play-pause-button">
								<div class="center-y-table">
									<i class="fa fa-play"></i>
								</div>
							</div>
							<div class="name-artist">
								<div class="center-y-table">
									<h2>${albm.title }</h2>
								</div>
							</div>
							<time class="trak-duration"> ${albm.duration } </time>
						</div>
					</c:forEach>
				</div>
			</div>
			<!-- end-col-sm-8 -->
			<div class="col-sm-3 col-sm-offset-1">
				<div class="sidebarAlbum">
					<div class="widget">
						<h3>Details</h3>
						<ul>
							<li>Release Date:<span>July 03, 2017 </span></li>
							<li>Catalog:<span>YouAreMine 0150813 </span></li>
							<li>Label:<span>YouAreMine sound </span></li>
							<li>Format:<span>mp3</span></li>
						</ul>
					</div>
					<!-- end widget -->
					<div class="widget">
						<h3>Instagram</h3>
						<div class="instagram-widget">
							<ul id="instagram-sidebar-widget" class="clearfix"></ul>
						</div>
					</div>
					<!-- end widget -->
					<div class="widget">
						<h3>Available On</h3>
						<section>
							<ul id='services'>
								<li><a href="#"><div>
											<i class="fa fa-lastfm"></i>
										</div></a></li>
								<li><a href="#"><div>
											<i class="fa fa-soundcloud"></i>
										</div></a></li>
								<li><a href="#"><div>
											<i class="fa fa-apple"></i>
										</div></a></li>
								<li><a href="#"><div>
											<i class="fa fa-spotify"></i>
										</div></a></li>
								<li><a href="#"><div>
											<i class="fa fa-amazon"></i>
										</div></a></li>
							</ul>
						</section>
					</div>
					<!-- end widget -->
				</div>
				<!-- end sidebarAlbum -->
			</div>
			<!-- end col-sm-3 col-sm-offset-1 -->
		</div>
		<!-- end row -->
	</div>
	<!-- end container -->
</section>
<!-- =============== END ALBUM SINGLE ================ -->

<!-- =============== START PAGINATION ================ -->
<div class="section-block  bkg-grey-ultralight pagination-2">
	<div class="row full-width ">
		<c:if test="${AlbumPrevious ne null }">
			<div class="col-sm-6"
				style="background-color: rgba(255, 255, 255, 0.1);">
				<a style="text-decoration: none;"
					href="<c:url value='/singleAlbum?albumId=${AlbumPrevious.id }' />"
					class="pagination-previous"> <small>Prev</small> <span>${AlbumPrevious.albumName }</span>
				</a>
			</div>
		</c:if>
		<c:if test="${AlbumNext ne null }">
			<div class="col-sm-6"
				style="background-color: rgba(255, 255, 255, 0.1);">
				<a style="text-decoration: none;"
					href="<c:url value='/singleAlbum?albumId=${AlbumNext.id }' />"
					class="pagination-next "> <small>Next</small> <span>${AlbumNext.albumName }</span>
				</a>
			</div>
		</c:if>
	</div>
</div>
<!-- =============== END PAGINATION ================ -->
