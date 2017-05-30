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
					style="background-image: url('<%=request.getContextPath()%>/resources/img/starHomePage/urm_back3.jpg');"
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
												<a class="link link-yaku" href="#"> <span>U</span><span>R</span><span>M</span>
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
						<a href="albumsFullBackground.html">Music Albums</a>
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
								<span class="thumbs-album"> <a href="albumsSingle1.html"><img
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
	style="background-image: url(<%=request.getContextPath()%>/resources/img/blog/blog-home.jpg);">
	<div class="container">
		<div class="row">
			<div class="sectionTitle paddingBottom">
				<span class="heading-t3"></span>
				<h2>
					<a href="blogGrid.html">Recent News</a>
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
											<a href="blogSingle.html">${news.title }</a>
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
				<span class="heading-t3"></span>
				<h2>
					<a href="video.html">Trending Videos</a>
				</h2>
				<span class="heading-b3"></span>
				<p>
					Check out my latest videos and follow me on <a href="#">Youtube</a>
					& <a href="#">Vimeo</a> to view more.
				</p>
			</div>
			<!-- end sectionTtile -->
			<div class="col-sm-4">
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/VV-Q-aRHTDE" allowfullscreen></iframe>
			</div>
			<!-- end col-sm-4 -->
			<div class="col-sm-4">
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/VxG5C4q_rEs" allowfullscreen></iframe>
			</div>
			<!-- end col-sm-4 -->
			<div class="col-sm-4">
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/OkbuRa1o1wA" allowfullscreen></iframe>
			</div>
			<!-- end col-sm-4 -->
		</div>
	</div>
</section>
<!-- =============== END VIDEO SECTION ================ -->
