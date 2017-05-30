<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%><head>
<!-- =============== START BLOG SINGLE ================ -->
<section class="blogSingle padding" id="content">
	<div class="container">
		<div class="row">
			<div class="blog-left">
				<div class="col-sm-8">
					<div class="owl-carousel">
						<div class="item">
							<img src="${RecentNews.image }" alt="">
						</div>
					</div>
					<div class="admin-list clearfix">
						<ul>
							<li><a href="#">${RecentNews.date } ${RecentNews.time }</a>&nbsp;/&nbsp;</li>
							<li><a href="#">By Admin</a>&nbsp;/&nbsp;</li>
							<li><a href="#">${RecentNews.author }</a>&nbsp;/&nbsp;</li>
						</ul>
					</div>
					<div class="title">
						<h2>
							<a href="${RecentNews.url }" target="_blank">${RecentNews.title }</a>
						</h2>
					</div>
					<div class="paragraph">
						<p>${RecentNews.description }</p>
						<a href="${RecentNews.url }" target="_blank">Read More</a>
					</div>
					<div class="tagBlogSingle">
						<div class="content">
							<p>Tag Cloud:</p>
							<a href="#">Festival</a>&nbsp;/&nbsp; <a href="#">Photography</a>&nbsp;/&nbsp;
							<a href="#">Party</a>&nbsp;/&nbsp; <a href="#">Music</a>&nbsp;/&nbsp;
							<a href="#">Dj</a>
						</div>
					</div>

					<div class="author-info">
						<div class="left-author-info">
							<figure>
								<img
									src="<%=request.getContextPath()%>/resources/img/blog/blg1.png"
									alt="">
							</figure>
						</div>
						<div class="right-author-info">
							<h1>By Admin</h1>
							<p>Literally slow-carb umami, mixtape bicycle rights salvia
								skateboard. Selfies squid normcore chillwave, slow-carb cred
								Austin small batch leggings umami cliche trust fund Echo.</p>
						</div>
					</div>

					<div class="comment-container">
						<h1 class="title-comments">3 Comments</h1>
						<!-- ============== COMMENTS ============= -->
						<ul class="comments">
							<li>
								<div class="comment depth-1">
									<div class="left-section">
										<img alt=""
											src="<%=request.getContextPath()%>/resources/img/blog/maricon.png">
									</div>
									<div class="right-section">
										<h1>
											<a href="#">Gabriel Groza</a>
										</h1>
										<p class="time-comment">
											Dec 15, 2015<span class="slashComment">/</span><a
												class="comment-reply-link" href="#"> Reply</a>
										</p>

										<div class="comment-text">
											<p>Literally slow-carb umami, mixtape bicycle rights
												salvia skateboard. Selfies squid normcore chillwave,
												slow-carb cred Austin small batch leggings umami cliche
												trust fund Echo Park Pinterest 8-bit. PBR and B church-key
												keffiyeh</p>
										</div>
									</div>
								</div>
								<ul class="children">
									<li>
										<div class="comment depth-2">
											<div class="left-section">
												<img alt=""
													src="<%=request.getContextPath()%>/resources/img/blog/calin.png">
											</div>
											<div class="right-section">

												<h1>
													<a href="#">Calin Tasca</a>
												</h1>
												<p class="time-comment">
													Dec 15, 2015<span class="slashComment">/</span><a
														class="comment-reply-link" href="#"> Reply</a>
												</p>
												<div class="comment-text">
													<p>Literally slow-carb umami, mixtape bicycle rights
														salvia skateboard. Selfies squid normcore chillwave,
														slow-carb cred Austin small batch.</p>
												</div>
											</div>
										</div>
									</li>
								</ul>
							</li>
							<li>
								<div class="pingback even thread-even depth-1">
									<div class="left-section">
										<img alt=""
											src="<%=request.getContextPath()%>/resources/img/blog/dani.png">
									</div>
									<div class="right-section">

										<h1>
											<a href="#">Nimeni Daniel</a>
										</h1>
										<p class="time-comment">
											Dec 15, 2015<span class="slashComment">/</span><a
												class="comment-reply-link" href="#"> Reply</a>
										</p>
										<div class="comment-text">
											<p>Literally slow-carb umami, mixtape bicycle rights
												salvia skateboard. Selfies squid normcore chillwave,
												slow-carb cred Austin small batch leggings umami cliche
												trust fund Echo Park Pinterest 8-bit. PBR and B church-key
												keffiyeh</p>
										</div>
									</div>
								</div>
							</li>
						</ul>
					</div>
					<!-- Comments -->

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
							<h3 class="widget-title">Categories</h3>
							<ul>
								<li><a href="<c:url value='/recentnews'/>"> Recent News</a></li>
								<li><a href="<c:url value='/newscategory/World' />">
										World</a></li>
								<li><a href="<c:url value='/newscategory/India' />">
										India</a></li>
								<li><a href="<c:url value='/newscategory/Sports' />">
										Sports</a></li>
								<li><a href="<c:url value='/newscategory/Movies' />">
										Movies</a></li>
								<li><a href="<c:url value='/newscategory/Economic' />">
										Economic </a></li>
								<li><a href="<c:url value='/newscategory/Business' />">
										Business</a></li>
								<li><a href="<c:url value='/newscategory/Financial' />">
										Financial</a></li>
								<li><a href="<c:url value='/newscategory/Technology' />">
										Technology</a></li>
							</ul>
						</div>
						<!-- end widget -->
						<div class="widget">
							<h3 class="widget-title">Recent Posts</h3>
							<ul>
								<c:forEach items="${NewsList }" var="news" varStatus="loop">
									<c:if test="${loop.count < 6 }">
										<li><a href="<c:url value='/singleNews?id=${news.id}' />"><font
												color="#2ECC71">${news.title }</font></a></li>
									</c:if>
								</c:forEach>
							</ul>
						</div>
						<!-- end widget -->
						<div class="widget">
							<h3 class="widget-title">Tweets</h3>
							<!-- twitter -->
							<a class="twitter-timeline"
								href="https://twitter.com/UntoldFestival"
								data-widget-id="716220714324467712">Tweets by
								@UntoldFestival</a>
							<script>
								!function(d, s, id) {
									var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/
											.test(d.location) ? 'http'
											: 'https';
									if (!d.getElementById(id)) {
										js = d.createElement(s);
										js.id = id;
										js.src = p
												+ "://platform.twitter.com/widgets.js";
										fjs.parentNode.insertBefore(js, fjs);
									}
								}(document, "script", "twitter-wjs");
							</script>
						</div>
						<!-- end widget -->
						<div class="widget tagCloud">
							<h3 class="widget-title">Tag Cloud</h3>
							<ul>
								<li><a href="#">Audio</a>&nbsp;/&nbsp;</li>
								<li><a href="#">Best Event</a>&nbsp;/&nbsp;</li>
								<li><a href="#">Festival</a>&nbsp;/&nbsp;</li>
								<li><a href="#">Albums</a>&nbsp;/&nbsp;</li>
								<li><a href="#">Soundcloud</a>&nbsp;/&nbsp;</li>
								<li><a href="#">Video</a>&nbsp;/&nbsp;</li>
								<li><a href="#">Summer</a>&nbsp;/&nbsp;</li>
								<li><a href="#">People</a>&nbsp;/&nbsp;</li>
								<li><a href="#">Bands</a>&nbsp;/&nbsp;</li>
								<li><a href="#">Concert</a>&nbsp;/&nbsp;</li>
							</ul>
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