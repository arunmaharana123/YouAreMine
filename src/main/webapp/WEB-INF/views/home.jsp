<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!-- =============== START BREADCRUMB ================ -->
<section class="no-mb">
	<div class="row">
		<div class="col-sm-12">
			<div class="breadcrumb-fullscreen-parent phone-menu-bg">
				<div
					class="breadcrumb breadcrumb-fullscreen alignleft small-description overlay almost-black-overlay"
					style="background-image: url('<%=request.getContextPath()%>/resources/img/arun/urm_back3.jpg');"
					data-stellar-background-ratio="0.5"
					data-stellar-vertical-offset="0">
					<div id="home" style="position: absolute; left: 0; top: 0;">
						<div class="intro-header">
							<div class="js-height-full star" style="height: 955px;">
								<div class="star-pattern-1 js-height-full"
									style="height: 994px;"></div>
								<div class="col-sm-12">
									<div class="starTitle">
										<h4>Feel The Music</h4>
										<div class="grid__item">
											<h1>
												<a id="changeColor" class="link link-yaku" href="#"><span
													style="font-family: 'Arial Black', Gadget, sans-serif">U</span><span
													style="font-family: 'Arial Black', Gadget, sans-serif">R</span><span
													style="font-family: 'Arial Black', Gadget, sans-serif">M</span>
												</a>
											</h1>
										</div>
										<h4>You Are Mine.</h4>
									</div>
									<canvas class="cover" width="1920" height="955"></canvas>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- =============== END BREADCRUMB ================ -->

<!-- =============== START ALBUM COVER SECTION ================ -->
<section class="padding albumsHome">
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<div class="sectionTitle paddingBottom">
					<span class="heading-t3"></span>
					<h2>
						<a href="<c:url value='/music' />">Music Albums</a>
					</h2>
					<span class="heading-b3"></span>
				</div>
				<!-- end sectionTtile -->
			</div>
			<!-- end col-sm-12 -->
		</div>
		<div class="list-albums">
			<ul class="list-feature col-md-12 col-xs-12 col-sm-12">
				<c:forEach items="${MusicAlbums }" var="music" varStatus="loop">
					<c:if test="${loop.count < 5 }">
						<li class="col-md-3 col-sm-3 col-xs-12">
							<div class="album-icon">
								<span class="thumbs-album"> <a
									href="<c:url value='/singleAlbum?albumId=${music.id }' />"><img
										style="height: 200px" src="${music.albumImage }"
										class="attachment-album-thumbnail wp-post-image"
										alt="album-cover-1"></a>
								</span> <span class="disk"></span>
							</div> <!-- END ALBUM ICON -->
							<div class="name">
								<h3>${music.albumName }</h3>
								<p>${music.totalSongs }</p>
							</div> <!-- end name -->
						</li>
					</c:if>
				</c:forEach>
			</ul>
		</div>
		<!-- end list-albums -->
	</div>
	<!-- end container -->
</section>
<!-- =============== END ALBUM COVER SECTION ================ -->



<!-- =============== START HOME-BLOG SECTION ================ -->
<section class="padding background-properties blogHomeSection"
	style="background-image: url(<%=request.getContextPath()%>/resources/img/arun/blog-home.jpg);">
	<div class="container">
		<div class="row">
			<div class="sectionTitle paddingBottom">
				<span class="heading-t3"></span>
				<h2>
					<a href="<c:url value='/recentnews' />">Recent News</a>
				</h2>
				<span class="heading-b3"></span>
			</div>
			<!-- end sectionTtile -->
			<div class="col-sm-12">

				<c:forEach items="${NewsList }" var="news" varStatus="loop">
					<c:if test="${loop.count < 5 }">
						<div class="col-sm-3">
							<div class="blogBox">
								<div class="imgBox">
									<img src="${news.image }" alt="box-img">
								</div>
								<div class="blogBoxContent">
									<div class="blogHeader">
										<h1>
											<a href="<c:url value='/singleNews?id=${news.id}' />">${news.title }</a>
										</h1>
									</div>
									<div class="admin-list clearfix">
										<ul>
											<li><a href="#">${news.date }</a>&nbsp;/&nbsp;</li>
											<li><a href="#">By ${news.author }</a></li>
											<li><a href="${news.url }" target="blank">poweredBy
													: NewsApi.org</a></li>
										</ul>
									</div>
									<!-- end admin-list -->
									<div class="rmButton">
										<a href="/singleNews?id=${news.id }">Read More</a>
									</div>
								</div>
								<!-- end blogBoxContent -->
							</div>
							<!-- end blogBox -->
						</div>
						<!-- end col-sm-3 -->
					</c:if>
				</c:forEach>
			</div>
			<!-- end col-sm-12 -->
		</div>
		<!-- end container -->
	</div>
	<!-- end row -->
</section>
<!-- =============== END HOME-NLOG SECTION ================ -->



<!-- =============== START VIDEO SECTION ================ -->
<section class="videoHome padding">
	<div class="container">
		<div class="row">
			<div class="sectionTitle">
				<div class="sectionTitle paddingBottom">
					<span class="heading-t3"></span>
					<h2>
						<a href="<c:url value='/video' />">Trending Videos</a>
					</h2>
					<span class="heading-b3"></span>
				</div>
			</div>
			<c:forEach items="${Videos }" var="vdo" varStatus="loop">
				<div class="col-sm-3" style="margin-bottom: 20px;">
					<iframe width="90%" height="75px" src="${vdo.path }"
						allowfullscreen></iframe>
				</div>
			</c:forEach>
		</div>
	</div>
</section>
<!-- =============== END VIDEO SECTION ================ -->
<script>
	var count = 0;
	var changetrack = 0;
	var color = [ "#FF0000", "#FF4000", "#FF8000", "#FFBF00", "#FFFF00",
			"#BFFF00", "#80FF00", "#40FF00", "#00FF00", "#01DF74", "#01DFA5",
			"#01DFD7", "#01A9DB", "#0174DF", "#013ADF", "#0101DF", "#3A01DF",
			"#7401DF", "#A901DB", "#DF01D7", "#DF01A5", "#DF0174", "#DF013A" ];
	var myVar = setInterval(changeBgColor, 1000);
	function changeBgColor() {
		var div = document.getElementById('changeColor').style;
		div.color = color[count];
		if (changetrack == 0) {
			count++;
		} else {
			count--;
		}
		if (count == 0) {
			changetrack = 0;
		} else if (count == 22) {
			changetrack = 1;
		}

	}
</script>