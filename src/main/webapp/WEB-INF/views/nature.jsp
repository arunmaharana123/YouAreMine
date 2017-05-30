<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%><head>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<title>YouAreMy</title>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<link rel="shortcut icon" type="image/png"
	href="<%=request.getContextPath()%>/resources/images/favicon.png" />

<!-- Favicon -->
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/resources/images/favicon.html">

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
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/simpleline-icons/simple-line-icons.css"
	type="text/css" media="screen" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/js/animations/css/animations.min.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/responsive-leyouts.css"
	type="text/css" media="screen" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/shortcodes.css"
	type="text/css" media="screen" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/js/style-switcher/color-switcher.css"
	media="screen" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/js/mainmenu/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/js/mainmenu/menu.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/js/slidepanel/slidepanel.css"
	type="text/css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/js/basicslider/bacslider.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/js/cubeportfolio/cubeportfolio.min.css"
	type="text/css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/js/accordion/style.css"
	type="text/css" />
<style type="text/css">
@media ( max-width : 768px) {
	img#MyLogo {
		display: none;
	}
}

@media ( max-width : 768px) {
	.compact .header {
		height: 0px;
		padding-top: 0px;
	}
}
</style>
</head>

<body>


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

	<div class="clearfix margin_top10"></div>

	<div class="clearfix"></div>
	<div class="content_fullwidth less">
		<div class="container">
			<div class="clearfix margin_top3"></div>
			<div class="clearfix"></div>

			<div id="grid-container" class="cbp-l-grid-projects">

				<ul>
					<c:forEach items="${Photos}" var="photo">
						<li class="cbp-item graphic">
							<div class="cbp-caption">
								<div class="cbp-caption-defaultWrap">
									<img src="${photo.path }" alt="">
								</div>
								<div class="cbp-caption-activeWrap">
									<div class="cbp-l-caption-alignCenter">
										<div class="cbp-l-caption-body">
											<a download href="${photo.path }"
												class="cbp-l-caption-buttonLeft"><i
												class="fa fa-download" aria-hidden="true"></i> ${photo.size
												}KB</a> <a href="${photo.path }"
												class="cbp-lightbox cbp-l-caption-buttonRight"
												data-title="Dashboard<br>by Paul Flavius Nechita">view
												larger</a>
										</div>
									</div>
								</div>
							</div>

						</li>
						<!-- end item -->
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<c:if test="${fn:length(Photos) == 30 }">

		<div class="container" align="right">
			<ul class="pagination pagination-lg">
				<li><a
					href="<c:url value='/nature?s=${Category }&c=${Count }' />"
					class="but_ok_2"><i class="fa fa-arrow-right fa-lg"></i>&nbsp;
						Next</a></li>
			</ul>
		</div>
	</c:if>
	<c:if test="${fn:length(Photos) != 30 }">
		<div class="container" align="right">
			<ul class="pagination pagination-lg">
				<li><a href="#" class="but_ok_2"><i
						class="fa fa-arrow-right fa-lg"></i>&nbsp; No More Photo</a></li>
			</ul>
		</div>
	</c:if>
	<!-- end content area -->
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


	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/universal/jquery.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/style-switcher/jquery-1.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/style-switcher/styleselector.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/animations/js/animations.min.js"
		type="text/javascript"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/slidepanel/slidepanel.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/mainmenu/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/mainmenu/customeUI.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/masterslider/jquery.easing.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/scrolltotop/totop.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/mainmenu/sticky-main.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/mainmenu/modernizr.custom.75180.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/cubeportfolio/jquery.cubeportfolio.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/cubeportfolio/main5.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/accordion/jquery.accordion.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/accordion/custom.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/universal/custom.js"></script>


</body>

<!-- Mirrored from gsrthemes.com/aaika/fullwidth/portfolio-3.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 14 Apr 2017 09:45:19 GMT -->
</html>



