<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%><head>
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

<!-- =============== START BLOG FILTER ================ -->
<section class="aquraFilter paddingGrid albumFilter" id="content">
	<div class="container">
		<!-- start blog-filter-category -->
		<div class="categories">
			<ul class="clearfix" data-option-key="filter">
				<li><a href="#" class="selected" data-option-value="*">All</a></li>
				<li><a href="#" data-option-value=".new">New Release</a></li>
				<li><a href="#" data-option-value=".best">Popular Songs</a></li>
				<li><a href="#" data-option-value=".most">Hit Songs</a></li>
				<c:if test="${ROLE eq 'ADMIN' }">
					<li><a href="<c:url value='/addMusic' />">Upload Music</a></li>
				</c:if>
			</ul>
		</div>
		<!--end categories-->
		<!-- end blog-filter-category -->

		<!-- start filter -->
		<div class="aqura-filter-content list-albums">
			<ul class="list-feature clearfix">
				<c:forEach items="${Albums }" var="albm" varStatus="loop">
					<li class="col-md-3 col-sm-3 col-xs-12 new"><div
							class="album-icon albumIcon3">
							<span class="thumbs-album"> <a
								href="<c:url value='/singleAlbum?albumId=${albm.id }' />"><img
									style="height: 200px; height: 270px;" src="${albm.albumImage }"
									class="attachment-album-thumbnail wp-post-image"
									alt="album-cover-1"></a>
							</span><span class="disk"></span>
						</div> <!-- END ALBUM ICON -->
						<div class="name">
							<h3>${albm.albumName }</h3>
							<p>${albm.totalSongs }&nbsp;songs</p>
						</div> <!-- end name --></li>
				</c:forEach>
			</ul>
		</div>
		<!-- end aqura-filter-cotent -->
		<!-- end filter -->
	</div>
	<!-- end container -->

	<div class="container">
		<!-- start blog-filter-category -->
		<div class="categories">
			<ul class="clearfix" data-option-key="filter">
				<li><a href="#" class="selected" data-option-value="*">All</a></li>
				<li><a href="#" data-option-value=".new">New Release</a></li>
				<li><a href="#" data-option-value=".best">Popular Songs</a></li>
				<li><a href="#" data-option-value=".most">Hit Songs</a></li>
			</ul>
		</div>
		<!--end categories-->
		<!-- end blog-filter-category -->
</section>
<!-- =============== END BLOG FILTER ================ -->