<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%><head>
<section class="aquraFilter id="
	content" style="background-color: #eeeeee;">
	<div class="container" style="padding: 2em;" align="right">
		<!-- start blog-filter-category -->
		<div class="categories" align="right" style="padding-bottom: 0rem">
			<ul class="clearfix">
				<!-- Menu Fixed Item -->
				<li><a href="<c:url value='/home' />">home</a></li>
				<li><a href="<c:url value='/recentnews' />">News</a></li>
				<li><a href="<c:url value='/photo' />">Photo</a></li>
				<li><a href="<c:url value='/music' />">Music</a></li>
				<li><a href="<c:url value='/video' />">Video</a></li>
				<li><a href="<c:url value='/home' />">Apps</a></li>
				<li><a href="<c:url value='/home' />">Contact</a></li>
				<li><a href="<c:url value='/home' />">About</a></li>
			</ul>
		</div>
	</div>
</section>
<!-- =============== START FOOTER ================ -->
<section style="background-color: #eeeeee;">
	<div class="footer footerPadding">
		<div class="container">
			<div class="row">
				<div class="col-sm-4">
					<div class="copyFooter">
						<a href="#">&copy; YouAreMy 2016-18</a>
					</div>
				</div>
				<div class="col-sm-4">
					<nav class="social-icons">
						<ul class="clearfix">
							<li><a href="#" class="icon-button shopIcon"><i
									class="fa fa-twitter"></i><span></span></a></li>
							<li><a href="#" class="icon-button shopIcon"><i
									class="fa fa-facebook"></i><span></span></a></li>
							<li><a href="#" class="icon-button shopIcon"><i
									class="fa fa-apple"></i><span></span></a></li>
							<li><a href="#" class="icon-button shopIcon"><i
									class="fa fa-lastfm"></i><span></span></a></li>
							<li><a href="#" class="icon-button shopIcon"><i
									class="fa fa-soundcloud"></i><span></span></a></li>
							<li><a href="#" class="icon-button shopIcon"><i
									class="fa fa-youtube-play"></i><span></span></a></li>
							<li><a href="#" class="icon-button shopIcon"><i
									class="fa fa-vimeo"></i><span></span></a></li>
						</ul>
					</nav>
				</div>
				<div class="col-sm-4">
					<div class="goTop back-to-top" id="back-to-top">
						<i class="fa fa-angle-up"></i> <a href="#">Go Top</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- =============== END FOOTER ================ -->