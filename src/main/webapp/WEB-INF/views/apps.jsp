<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%><head>

<!-- =============== START BREADCRUMB ================ -->
<section class="no-mb">
	<div class="row">
		<div class="col-sm-12">
			<div class="before-FullscreenSlider"></div>
			<div class="breadcrumb-fullscreen-parent phone-menu-bg">
				<div
					class="breadcrumb breadcrumb-fullscreen alignleft small-description overlay almost-black-overlay"
					style="background-image: url('<%=request.getContextPath()%>/resources/img/arun/appmain.png');"
					data-stellar-background-ratio="0.5"
					data-stellar-vertical-offset="0">
					<div class="breadTxt">
						<h1>URM App</h1>
						<p>
							Download our official Android App in Play Store. <br>Lots
							of Entertainment. <br>Recent News. <br>Latest Videos. <br>Trending
							Songs. <br>Beautiful Photos. Etc.
						</p>
						<a href="#content" data-easing="easeInOutQuint" data-scroll=""
							data-speed="900" data-url="false"> View More <i
							class="fa fa-angle-down"></i>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- =============== END BREADCRUMB ================ -->

<!-- =============== START BLOG SINGLE ================ -->
<section class="blogSingle padding" id="content">
	<div class="container">
		<div class="row">
			<div class="blog-left">
				<div class="col-sm-8">
					<div class="title">
						<h2>Screen Shots</h2>
					</div>
					<div class="owl-carousel">
						<div class="item">
							<img
								src="<%=request.getContextPath()%>/resources/img/arun/screenshot.jpg"
								alt="">
						</div>
						<div class="item">
							<img
								src="<%=request.getContextPath()%>/resources/img/arun/screenshot.jpg"
								alt="">
						</div>
						<div class="item">
							<img
								src="<%=request.getContextPath()%>/resources/img/arun/screenshot.jpg"
								alt="">
						</div>
						<div class="item">
							<img
								src="<%=request.getContextPath()%>/resources/img/arun/screenshot.jpg"
								alt="">
						</div>
						<div class="item">
							<img
								src="<%=request.getContextPath()%>/resources/img/arun/screenshot.jpg"
								alt="">
						</div>
					</div>
					<div class="comment-container">
						<div class="singleBlogForm">
							<h1>Leave a comment</h1>
							<form action="#" method="post" class="comment-form">
								<input id="author" name="author" type="text" value=""
									aria-required="true" required placeholder="Name..."> <input
									id="email" name="email" type="text" value=""
									aria-required="true" required placeholder="Email..."> <input
									id="url" name="url" type="text" value=""
									placeholder="Website...">
								<textarea name="comment" placeholder="Message..." rows="6"
									required></textarea>
								<p class="form-submit">
									<input name="submit" type="submit" id="submit"
										value="Post Comment">
								</p>
							</form>
						</div>
					</div>
					<!-- end col-sm-8 -->
				</div>
				<!-- end blog-left -->
				<div class="blog-right">
					<div class="col-sm-3 col-sm-offset-1">
						<div class="blogSidebar">
							<div class="widget">
								<h3 class="widget-title">Features</h3>
								<ul>
									<li>Daily Quotes</li>
									<li>Recent News</li>
									<li>Trending Musics</li>
									<li>Latest Videos</li>
									<li>Top Photos</li>
									<li>Share on Social Media</li>
								</ul>
							</div>
							<!-- end widget -->
							<div class="widget">
								<h3 class="widget-title">Last Update v2.0</h3>
								<ul>
									<li><a href="#">10+ category on News</a></li>
									<li><a href="#">100+ Music Album Added</a></li>
									<li><a href="#">5+ Languages Music</a></li>
									<li><a href="#">YouTube Videos</a></li>
									<li><a href="#">Search Video</a></li>
									<li><a href="#">10k+ Photos added</a></li>
								</ul>
							</div>
							<!-- end widget -->
							<div class="widget">
								<div id="fb-root"></div>
								<script>
									(function(d, s, id) {
										var js, fjs = d.getElementsByTagName(s)[0];
										if (d.getElementById(id))
											return;
										js = d.createElement(s);
										js.id = id;
										js.src = 'https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.10&appId=652260944957858';
										fjs.parentNode.insertBefore(js, fjs);
									}(document, 'script', 'facebook-jssdk'));
								</script>
								<div class="fb-page"
									data-href="https://www.facebook.com/urm.technology/"
									data-small-header="false" data-adapt-container-width="true"
									data-hide-cover="false" data-show-facepile="true">
									<blockquote cite="https://www.facebook.com/urm.technology/"
										class="fb-xfbml-parse-ignore">
										<a href="https://www.facebook.com/urm.technology/">URM
											Technology</a>
									</blockquote>
								</div>
							</div>
							<!-- end widget -->
							<div class="widget">
								<blockquote class="twitter-tweet" data-lang="en">
									<p lang="en" dir="ltr">I have done.</p>
									&mdash; URM Technology (@urmtechnology) <a
										href="https://twitter.com/urmtechnology/status/923802341400371200?ref_src=twsrc%5Etfw">October
										27, 2017</a>
								</blockquote>
								<script async src="https://platform.twitter.com/widgets.js"
									charset="utf-8"></script>


							</div>
							<!-- end widget -->
						</div>
						<!-- end blogSidebar -->
					</div>
					<!-- end col-sm03 -->
				</div>
				<!-- end blog-right -->
			</div>
			<!-- end row -->
		</div>
		<!-- end container -->
</section>
<!-- =============== END BLOG SINGLE ================ -->