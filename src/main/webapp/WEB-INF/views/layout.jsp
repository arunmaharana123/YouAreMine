<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<html lang="en">

<!-- Mirrored from theme-brothers.com/AquraHTML/ by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 04 May 2017 06:20:04 GMT -->
<head>
<meta charset="UTF-8">
<meta name="HandheldFriendly" content="true" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<title>URM : YouAreMine</title>
<link rel="icon"
	href="<%=request.getContextPath()%>/resources/img/content/icon.png">
<!-- ========== CSS INCLUDES ========== -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/master.css">
</head>
<body>
	<div class="page-loader">
		<div class="vertical-align align-center">
			<img src="<%=request.getContextPath()%>/resources/loader/loader.gif"
				alt="" class="loader-img">
		</div>
	</div>

	<!-- =============== START PLAYER ================ -->
	<div class="main-music-player">
		<a class="hide-player-button"> <i class="fa fa-plus"></i> <i
			class="fa fa-minus"></i>
		</a>
		<div id="mesh-main-player" class="jp-jplayer"
			data-audio-src="<%=request.getContextPath()%>/resources/audio/flute.mp3"
			data-title="See right through ft. Fiora" data-artist="Tensnake"></div>

		<div id="mesh-main-player-content" style="background: #000"
			class="mesh-main-player" role="application" aria-label="media player">
			<div class="container">
				<div class="row">
					<div class="left-player-side">
						<div class="mesh-prev">
							<i class="fa fa-step-backward" style="color: white;"></i>
						</div>
						<div class="mesh-play">
							<i class="fa fa-play" style="color: white;"></i>
						</div>
						<div class="mesh-pause">
							<i class="fa fa-pause" style="color: white;"></i>
						</div>
						<div class="mesh-next">
							<i class="fa fa-step-forward" style="color: white;"></i>
						</div>
						<button id="playlist-toggle" class="jplayerButton">
							<span class="span-1"></span> <span class="span-2"></span> <span
								class="span-3"></span>
						</button>
					</div>
					<div class="center-side">
						<div class="mesh-current-time" style="color: white;"></div>
						<div class="mesh-seek-bar">
							<div class="mesh-play-bar"></div>
						</div>
						<div class="mesh-duration"></div>
					</div>
					<div class="right-player-side">
						<div class="mesh-thumbnail">
							<img
								src="<%=request.getContextPath()%>/resources/img/albums/cover3.jpg"
								alt="">
						</div>
						<div class="mesh-title"></div>
						<div class="mesh-artist"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- =============== END PLAYER ================ -->

	<!-- =============== START PLAYLIST ================ -->
	<div class="playlist-wrapper" id="playlist-wrapper">
		<div class="jp-playlist container">
			<div class="about-list clearfix">
				<span class="about-name">NAME</span> <span class="about-length">LENGTH</span>
				<span class="about-available">AVAILABLE ON</span>
			</div>
			<c:forEach items="${MUSICS }" var="music" varStatus="loop">
				<c:if test="${loop.count < 11 }">
					<div class="trak-item" data-audio="${music.path }"
						data-artist="${music.singer }"
						data-thumbnail="${music.albumImage }" data-id="trak-201">
						<audio preload="metadata" src="${music.path }"
							title="${music.title }"></audio>
						<div class="additional-button">
							<div class="center-y-table">
								<a href="#"> <i class="fa fa-headphones"></i>
								</a> <a href="#"> <i class="fa fa-apple"></i>
								</a> <a href="#"> <i class="fa fa-soundcloud"></i>
								</a>
							</div>
						</div>
						<div class="play-pause-button">
							<div class="center-y-table">
								<i class="fa fa-play"></i>
							</div>
						</div>
						<div class="name-artist">
							<div class="center-y-table">
								<h2>${music.title }</h2>
							</div>
						</div>
						<time class="trak-duration"> ${music.duration } </time>
					</div>
				</c:if>
			</c:forEach>
		</div>
	</div>
	<!-- =============== END PLAYLIST ================ -->

	<tiles:insertAttribute name="header" />

	<tiles:insertAttribute name="body" />

	<tiles:insertAttribute name="footer" />

	<!-- ================================================== -->
	<!-- =============== START JQUERY SCRIPTS ================ -->
	<!-- ================================================== -->
	<script src="<%=request.getContextPath()%>/resources/js/jquery.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/jplayer/jplayer/jquery.jplayer.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/jPlayer.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/plugins.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/main.js"></script>
	<!--[if lte IE 9 ]>
		<script src="<%=request.getContextPath()%>/resources/js/placeholder.js"></script>
		<script>
			jQuery(function() {
				jQuery('input, textarea').placeholder();
			});
		</script>
	<![endif]-->
	<!-- ================================================== -->
	<!-- =============== END JQUERY SCRIPTS ================ -->
	<!-- ================================================== -->
</body>

<!-- Mirrored from theme-brothers.com/AquraHTML/ by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 04 May 2017 06:32:25 GMT -->
</html>