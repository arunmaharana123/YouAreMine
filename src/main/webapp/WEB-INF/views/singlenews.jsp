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