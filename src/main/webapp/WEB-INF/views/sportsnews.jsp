<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%><head>
<head>
<title>YouAreMy</title>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<link rel="shortcut icon" type="image/png"
	href="<%=request.getContextPath()%>/resources/images/favicon.png" />

<!-- this styles only adds some repairs on idevices  -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Google fonts - witch you want to use - (rest you can just remove) -->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300,300italic,400,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600,700,800,900'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Dancing+Script:400,700'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Josefin+Sans:400,100,100italic,300,300italic,400italic,600,600italic,700,700italic'
	rel='stylesheet' type='text/css'>

<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

<!-- ######### CSS STYLES ######### -->

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/reset.css"
	type="text/css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/style.css"
	type="text/css" />

<!-- font awesome icons -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/font-awesome/css/font-awesome.min.css">

<!-- simple line icons -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/simpleline-icons/simple-line-icons.css"
	media="screen" />

<!-- animations -->
<link
	href="<%=request.getContextPath()%>/resources/js/animations/css/animations.min.css"
	rel="stylesheet" type="text/css" media="all" />

<!-- responsive devices styles -->
<link rel="stylesheet" media="screen"
	href="<%=request.getContextPath()%>/resources/css/responsive-leyouts.css"
	type="text/css" />

<!-- shortcodes -->
<link rel="stylesheet" media="screen"
	href="<%=request.getContextPath()%>/resources/css/shortcodes.css"
	type="text/css" />


<!-- style switcher -->
<link rel="stylesheet" media="screen"
	href="<%=request.getContextPath()%>/resources/js/style-switcher/color-switcher.css" />

<!-- mega menu -->
<link
	href="<%=request.getContextPath()%>/resources/js/mainmenu/bootstrap.min.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/resources/js/mainmenu/menu.css"
	rel="stylesheet">

<!-- tabs -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/js/tabs/tabwidget/tabwidget.css" />

<!-- slide panel -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/js/slidepanel/slidepanel.css">

<!-- cubeportfolio -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/js/cubeportfolio/cubeportfolio.min.css">

<!-- accordion -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/js/accordion/style.css" />

<style type="text/css">
.cbp-l-grid-blog .cbp-caption {
	height: 60%;
}
</style>

</head>

<body>

	<div class="site_wrapper">

		<header class="header innerpages">

			<div class="container">

				<!-- Logo -->
				<div class="logo">
					<a href="index.html" id=""> <img id="MyLogo"
						src="<%=request.getContextPath()%>/resources/images/logo.png"
						height="100px" alt="">
					</a>
				</div>

				<!-- Navigation Menu -->
				<nav class="menu_main">

					<div class="navbar yamm navbar-default">

						<div class="container">
							<div class="navbar-header">
								<div class="navbar-toggle .navbar-collapse .pull-right "
									data-toggle="collapse" data-target="#navbar-collapse-1">
									<span>Menu</span>
									<button type="button">
										<i class="fa fa-bars"></i>
									</button>
								</div>
							</div>

							<div id="navbar-collapse-1"
								class="navbar-collapse collapse pull-right">

								<ul class="nav navbar-nav">

									<li class="yamm-fw"><a href="<c:url value='/Home' />"
										class="active">Home</a></li>
									<li class="dropdown"><a href="#" data-toggle="dropdown"
										class="dropdown-toggle">News</a>
										<ul class="dropdown-menu multilevel" role="menu">
											<li><a href="<c:url value='/News?count=0' />"><i
													class="fa fa-angle-right"></i>Recent News</a></li>
											<li><a href="<c:url value='/News?count=0' />"><i
													class="fa fa-angle-right"></i>World</a></li>
											<li><a href="<c:url value='/News?count=0' />"><i
													class="fa fa-angle-right"></i>India</a></li>
											<li><a href="<c:url value='/News?count=0' />"><i
													class="fa fa-angle-right"></i>Sports</a></li>
											<li><a href="<c:url value='/News?count=0' />"><i
													class="fa fa-angle-right"></i>Movies</a></li>
											<li><a href="<c:url value='/News?count=0' />"><i
													class="fa fa-angle-right"></i>Economic </a></li>
											<li><a href="<c:url value='/News?count=0' />"><i
													class="fa fa-angle-right"></i>Business</a></li>
											<li><a href="<c:url value='/News?count=0' />"><i
													class="fa fa-angle-right"></i>Financial</a></li>
											<li><a href="<c:url value='/NewsUpdated' />"><i
													class="fa fa-angle-right"></i>Updated News</a></li>

										</ul></li>
									<li class="dropdown"><a href="#" data-toggle="dropdown"
										class="dropdown-toggle">Photo</a>
										<ul class="dropdown-menu multilevel" role="menu">
											<li><a href="<c:url value='/photo?s=0&c=0' />"><i
													class="fa fa-angle-right"></i>All Categories</a></li>
											<li><a href="<c:url value='/photo?s=1&c=0' />"><i
													class="fa fa-angle-right"></i>Actors</a></li>
											<li><a href="<c:url value='/photo?s=2&c=0' />"><i
													class="fa fa-angle-right"></i>Actress</a></li>
											<li><a href="<c:url value='/photo?s=3&c=0' />"><i
													class="fa fa-angle-right"></i>Movie Posters</a></li>
											<li><a href="<c:url value='/photo?s=4&c=0' />"><i
													class="fa fa-angle-right"></i>Abstract</a></li>
											<li><a href="<c:url value='/photo?s=5&c=0' />"><i
													class="fa fa-angle-right"></i>Sci-Fi</a></li>
											<li><a href="<c:url value='/photo?s=6&c=0' />"><i
													class="fa fa-angle-right"></i>Vehicls</a></li>
											<li><a href="<c:url value='/photo?s=7&c=0' />"><i
													class="fa fa-angle-right"></i>Flowers</a></li>
											<li><a href="<c:url value='/photo?s=8&c=0' />"><i
													class="fa fa-angle-right"></i>Cartoon</a></li>
											<li><a href="<c:url value='/photo?s=9&c=0' />"><i
													class="fa fa-angle-right"></i>Background</a></li>
											<li><a href="<c:url value='/photo?s=10&c=0' />"><i
													class="fa fa-angle-right"></i>Nature</a></li>
											<li><a href="<c:url value='/photo?s=11&c=0' />"><i
													class="fa fa-angle-right"></i>HD</a></li>
											<li><a
												href="<c:url value='/Upload?filename=select file' />"><i
													class="fa fa-angle-right"></i>Upload Images</a></li>
										</ul></li>
									<li class="dropdown"><a href="#" data-toggle="dropdown"
										class="dropdown-toggle">Music</a>
										<ul class="dropdown-menu multilevel" role="menu">
											<li><a href="<c:url value='#' />"><i
													class="fa fa-angle-right"></i>Recent Songs</a></li>
											<li><a href="<c:url value='#' />"><i
													class="fa fa-angle-right"></i>Hit Songs</a></li>
											<li><a href="<c:url value='#' />"><i
													class="fa fa-angle-right"></i>Movie Songs</a></li>
											<li><a href="<c:url value='#' />"><i
													class="fa fa-angle-right"></i>Hindi</a></li>
											<li><a href="<c:url value='#' />"><i
													class="fa fa-angle-right"></i>Telugu</a></li>
											<li><a href="<c:url value='#' />"><i
													class="fa fa-angle-right"></i>Tamil</a></li>
											<li><a href="<c:url value='#' />"><i
													class="fa fa-angle-right"></i>Bengali </a></li>
											<li><a href="<c:url value='#' />"><i
													class="fa fa-angle-right"></i>Odia</a></li>


										</ul></li>
									<li class="dropdown"><a href="#" data-toggle="dropdown"
										class="dropdown-toggle">Movie</a>
										<ul class="dropdown-menu multilevel" role="menu">
											<li><a href="<c:url value='#' />"><i
													class="fa fa-angle-right"></i>Upcoming Movies</a></li>
											<li><a href="<c:url value='#' />"><i
													class="fa fa-angle-right"></i>Hollywood Movies</a></li>
											<li><a href="<c:url value='#' />"><i
													class="fa fa-angle-right"></i>Bollywood Movies</a></li>
											<li><a href="<c:url value='#' />"><i
													class="fa fa-angle-right"></i>Telugu Movies</a></li>
											<li><a href="<c:url value='#' />"><i
													class="fa fa-angle-right"></i>Tamil Movies</a></li>
											<li><a href="<c:url value='#' />"><i
													class="fa fa-angle-right"></i>Bengali Movies</a></li>
											<li><a href="<c:url value='#' />"><i
													class="fa fa-angle-right"></i>Odia Movies</a></li>
											<li><a href="<c:url value='#' />"><i
													class="fa fa-angle-right"></i>18+ Movies</a></li>


										</ul></li>
									<li class="dropdown"><a href="#" data-toggle="dropdown"
										class="dropdown-toggle">Android</a>
										<ul class="dropdown-menu multilevel" role="menu">
											<li><a href="<c:url value='#' />"><i
													class="fa fa-angle-right"></i>Recent Apps</a></li>
											<li><a href="<c:url value='#' />"><i
													class="fa fa-angle-right"></i>Paid Apps</a></li>
											<li><a href="<c:url value='#' />"><i
													class="fa fa-angle-right"></i>Paid Games</a></li>
											<li><a href="<c:url value='#' />"><i
													class="fa fa-angle-right"></i>Awsome Apps</a></li>
											<li><a href="<c:url value='#' />"><i
													class="fa fa-angle-right"></i>Hot Apps</a></li>
											<li><a href="<c:url value='#' />"><i
													class="fa fa-angle-right"></i>CategoryWise</a></li>


										</ul></li>
									<li class="dropdown"><a href="#" data-toggle="dropdown"
										class="dropdown-toggle">Contact</a></li>
									<li class="dropdown"><a href="#" data-toggle="dropdown"
										class="dropdown-toggle">About Us</a></li>

								</ul>

							</div>
						</div>
					</div>

				</nav>
				<!-- end Navigation Menu -->

			</div>

		</header>

		<div class="clearfix"></div>

		<div class="content_fullwidth less2">
			<div class="clearfix margin_top4"></div>
			<div class="container">

				<div class="content_left">

					<div id="grid-container" class="cbp-l-grid-blog two">

						<ul>
							<c:forEach items="${listOfArticles}" var="photo">
								<li class="cbp-item print"><a href="${photo.url }"
									target="_blank" class="cbp-caption">
										<div class="">
											<img src="${photo.image }" alt="">
										</div>

								</a> <a href="#" class="polinks">${photo.title }</a>
									<div class="cbp-l-grid-blog-desc">
										${photo.description } <a href="${photo.url }" target="_blank">more
											details</a>
									</div></li>
							</c:forEach>
							<!-- end item -->

						</ul>
						<div class="clearfix margin_top4"></div>
					</div>

				</div>
				<!-- end content left side -->

				<!-- right sidebar starts -->
				<div class="right_sidebar">

					<div class="sidebar_widget">

						<div id="tabs">

							<ul class="tabs">
								<li class="active"><a href="#tab1">Popular</a></li>
								<li><a href="#tab2">Recent</a></li>
							</ul>
							<!-- /# end tab links -->

							<div class="tab_container">
								<div id="tab1" class="tab_content">

									<ul class="recent_posts_list">
										<c:forEach items="${listOfArticles2}" var="photo"
											varStatus="loop">
											<c:if test="${loop.count < 6 }">
												<li><span><a href="#"><img
															src="${photo.image }" height="70px" width="100px" alt="" /></a></span>
													<a href="#">${photo.title }</a> <i>${photo.date }</i></li>
											</c:if>
										</c:forEach>
									</ul>

								</div>
								<!-- end popular posts -->

								<div id="tab2" class="tab_content">
									<ul class="recent_posts_list">

										<c:forEach items="${listOfArticles2}" var="photo"
											varStatus="loop">
											<c:if test="${loop.count > 5 }">
												<li><span><a href="#"><img
															src="${photo.image }" height="70px" width="100px" alt="" /></a></span>
													<a href="#">${photo.title }</a> <i>${photo.date }</i></li>
											</c:if>
										</c:forEach>
									</ul>

								</div>
								<!-- end popular articles -->



							</div>

						</div>

					</div>
					<!-- end section -->

					<div class="clearfix margin_top4"></div>

					<div class="sidebar_widget">

						<div class="sidebar_title">
							<h4>
								Recent <i>Posts</i>
							</h4>
						</div>

						<ul class="recent_posts_list">
							<c:forEach items="${listOfArticles2}" var="photo"
								varStatus="loop">
								<c:if test="${loop.count < 15 }">
									<li><span><a href="#"><img
												src="${photo.image }" height="100px" width="100px" alt="" /></a></span>
										<a href="#">${photo.title }</a> <i>${photo.date }</i></li>
								</c:if>
							</c:forEach>



						</ul>

					</div>
					<!-- end section -->

					<div class="clearfix margin_top4"></div>



				</div>
				<!-- end right sidebar -->

			</div>
		</div>
		<!-- end content area -->
		<div class="container">
			<div class="clearfix margin_top4"></div>
			<c:if test="${fn:length(listOfArticles) == 16 }">

				<div class="container" align="right">
					<ul class="pagination pagination-lg">
						<li><a href="<c:url value='/SportsNews?count=${Count }' />"
							class="but_ok_2"><i class="fa fa-arrow-right fa-lg"></i>&nbsp;
								Next</a></li>
					</ul>
				</div>
			</c:if>
			<c:if test="${fn:length(listOfArticles) != 16 }">
				<div class="container" align="right">
					<ul class="pagination pagination-lg">
						<li><a href="#" class="but_ok_2"><i
								class="fa fa-arrow-right fa-lg"></i>&nbsp; No More News</a></li>
					</ul>
				</div>
			</c:if>
		</div>
		<!-- /# end pagination -->
		<div class="clearfix marb9"></div>

		<footer class="footer">
			<div class="clearfix"></div>
			<div class="copyright_info">
				<div class="container">
					<div class="one_half animate" data-anim-type="fadeInRight">
						Copyright © 2014 youaremy.com. All rights reserved. <a href="#">Terms
							of Use</a> | <a href="#">Privacy Policy</a>
					</div>
				</div>
			</div>
			<!-- end copyright info -->

			<div class="clearfix"></div>

		</footer>
		<a href="#" class="scrollup">Scroll</a>
		<!-- end scroll to top of the page-->



	</div>
</body>
<!-- ######### JS FILES ######### -->
<!-- get jQuery from the google apis -->
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/universal/jquery.js"></script>

<!-- style switcher -->
<script
	src="<%=request.getContextPath()%>/resources/js/style-switcher/jquery-1.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/js/style-switcher/styleselector.js"></script>

<!-- animations -->
<script
	src="<%=request.getContextPath()%>/resources/js/animations/js/animations.min.js"
	type="text/javascript"></script>

<!-- mega menu -->
<script
	src="<%=request.getContextPath()%>/resources/js/mainmenu/bootstrap.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/js/mainmenu/customeUI.js"></script>

<!-- tab widget -->
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/tabs/tabwidget/tabwidget.js"></script>

<!-- MasterSlider -->
<script
	src="<%=request.getContextPath()%>/resources/js/masterslider/jquery.easing.min.js"></script>

<!-- scroll up -->
<script
	src="<%=request.getContextPath()%>/resources/js/scrolltotop/totop.js"
	type="text/javascript"></script>

<!-- sticky menu -->
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/mainmenu/sticky-main.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/mainmenu/modernizr.custom.75180.js"></script>

<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/universal/custom.js"></script>
<!-- cubeportfolio -->
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/cubeportfolio/jquery.cubeportfolio.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/cubeportfolio/main4.js"></script>
<!-- Mirrored from gsrthemes.com/aaika/fullwidth/blog-2.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 14 Apr 2017 09:46:23 GMT -->
</html>



