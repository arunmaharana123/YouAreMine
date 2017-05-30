<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- =============== START BLOG SIDEBAR-RIGHT ================ -->
<section class="blogSidebarRight padding" id="content">
	<div class="container">
		<div class="row">
			<div class="blog-sidebar-right">
				<div class="col-sm-8">
					<div class="blogBox">
						<iframe width="560" height="315"
							src="${VideoInfo.path }?autoplay=1" frameborder="0"
							allowfullscreen></iframe>
						<div class="blogBoxContent">
							<div class="blogHeader">
								<h1>
									<a href="#">${VideoInfo.name }</a>
								</h1>
							</div>
							<div class="admin-list clearfix">
								<ul>
									<li><a href="#">${VideoInfo.date }</a>&nbsp;/&nbsp;</li>
									<li><a href="#">By Admin</a>&nbsp;/&nbsp;</li>
								</ul>
							</div>
							<div class="blogParagraph">
								<p>Not Available</p>
							</div>
						</div>
					</div>
				</div>
				<!-- end col-sm-8 -->
			</div>
			<!-- end blog-left -->
			<div class="blog-right">
				<div class="col-sm-3 col-sm-offset-1">
					<div class="blogSidebar">
						<!-- end widget -->
						<div class="widget">
							<h3 class="widget-title">Similar Videos</h3>
							<ul>
								<c:forEach items="${VideoList }" var="vdo" varStatus="loop">
									<c:if test="${loop.count < 6 }">
										<li><a
											href="<c:url value='/singleVideo?id=${vdo.id }' />"><img
												width="100%" height="auto" src="${vdo.image }"></img>${vdo.name }</a>
										<hr></li>
									</c:if>
								</c:forEach>
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
<!-- =============== END BLOG SIDEBAR-RIGHT ================ -->
