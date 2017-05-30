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
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/js/basicslider/bacslider.css" />
<!-- cubeportfolio -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/js/cubeportfolio/cubeportfolio.min.css">

<!-- accordion -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/js/accordion/style.css" />

<!-- owl carousel -->
<link
	href="<%=request.getContextPath()%>/resources/js/carouselowl/owl.transitions.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/resources/js/carouselowl/owl.carousel.css"
	rel="stylesheet">

<style type="text/css">
.cbp-l-grid-blog .cbp-caption {
	height: 60%;
}
</style>
<style>
div.fixed {
	position: fixed;
	bottom: 0;
	right: 0;
	width: 100%;
	border: 3px solid #434343;
	background: #161616;
	padding-bottom: 10px;
}
</style>
</head>

<body>

	<div class="site_wrapper">


		<div class="clearfix"></div>

		<div class="content_fullwidth less2">
			<div class="clearfix margin_top4"></div>
			<div class="container">
				<div class="title2">
					<h2>
						<span class="text">Recent News</span>
					</h2>
				</div>
				<div class="content_left">

					<div id="grid-container" class="cbp-l-grid-blog two">

						<ul>
							<c:forEach items="${listOfArticles2}" var="photo"
								varStatus="loop">
								<c:if test="${loop.count < 5 }">
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
								</c:if>
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
				</div>
				<!-- end right sidebar -->

			</div>
		</div>
		<div class="clearfix marb9"></div>
		<div class="content_fullwidth">
			<div class="container">

				<div class="stcode_title4">
					<h3>
						<span class="line"></span><span class="text"><strong>Recent
								Photos</strong><span></span></span>
					</h3>
				</div>

				<div class="margin_top1"></div>
				<div class="clearfix"></div>

				<div id="owl-demo" class="owl-carousel">
					<c:forEach items="${Photos }" var="play">
						<div class="item">
							<img src="${play.path }" height="200px" alt="" />
						</div>
					</c:forEach>


				</div>
				<!-- end section -->

				<div class="clearfix"></div>
				<div class="divider_line3"></div>

				<div class="stcode_title4">
					<h3>
						<span class="line"></span><span class="text"><strong>Lazy
								Load</strong><span></span></span>
					</h3>
				</div>

				<div class="margin_top1"></div>
				<div class="clearfix"></div>

				<div id="owl-demo7" class="owl-carousel">

					<c:forEach items="${Photos }" var="play">
						<div class="item">
							<img class="lazyOwl" data-src="${play.path }" height="200px"
								alt="" />
						</div>
					</c:forEach>
				</div>
				<!-- end section -->

			</div>
		</div>

		<a href="#" class="scrollup">Scroll</a>
		<!-- end scroll to top of the page-->



	</div>
</body>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/universal/jquery.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/js/style-switcher/jquery-1.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/js/style-switcher/styleselector.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/js/animations/js/animations.min.js"
	type="text/javascript"></script>
<script
	src="<%=request.getContextPath()%>/resources/js/mainmenu/bootstrap.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/js/mainmenu/customeUI.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/tabs/tabwidget/tabwidget.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/js/masterslider/jquery.easing.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/js/scrolltotop/totop.js"
	type="text/javascript"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/slidepanel/slidepanel.js"></script>
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

<!-- owl carousel -->
<script
	src="<%=request.getContextPath()%>/resources/js/carouselowl/owl.carousel.js"></script>
</html>



