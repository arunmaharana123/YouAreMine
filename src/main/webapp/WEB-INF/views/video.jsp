<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<section class="aquraFilter" style="padding-top: 6em" id="content">
	<div class="container" style="padding: 2em;">
		<!-- start blog-filter-category -->
		<div class="col-sm-12">
			<div class="sectionTitle">
				<span class="heading-t3"></span>
				<div class="">
					<form action="searchYouTube" method="get" class="comment-form">
						<input id="q" name="q" type="text" value="${keyWord }"
							placeholder="type and hit Enter">

					</form>
				</div>
			</div>
			<!-- end contactForm -->
		</div>
	</div>
</section>

<!-- =============== START HOME-BLOG SECTION ================ -->
<section class="aquraFilter" id="content">
	<div class="container">
		<div class="row">
			<div class="col-sm-12 col-xs-12">
				<div class="aqura-filter-content">
					<ul class="clearfix">

						<c:forEach items="${VideoList }" var="vdo" varStatus="loop">
							<li class="col-sm-4 col-xs-12 video">
								<div class="blogBox">
									<a href="<c:url value='/singleVideo?id=${vdo.id }' />"><img
										src="${vdo.image }" width="500" height="281"></img></a>
									<div class="blogBoxContent">
										<div class="blogHeader" style="height: 150px">
											<h1>
												<a href="<c:url value='/singleVideo?id=${vdo.id }' />">${vdo.name }</a>
											</h1>
										</div>
										<div class="admin-list clearfix">
											<ul>
												<li><a href="#"> <fmt:formatDate
															value="${vdo.date }" type="date" />
												</a>&nbsp;/&nbsp;</li>
												<li><a href="#">By Admin</a></li>
											</ul>
										</div>
										<!-- end admin-list -->
									</div>
									<!-- end blogBoxContent -->
								</div> <!-- end blogBox -->
							</li>
							<!-- end col-sm-4 col-xs-12 -->
						</c:forEach>
					</ul>
				</div>
				<!-- end col-sm-12 -->
			</div>
			<!-- end container -->
		</div>
	</div>
	<!-- end row -->
</section>
<c:if test="${CategoryForward eq null }">
	<c:if test="${fn:length(VideoList) == 15 }">
		<div class="container" align="right">
			<ul class="pagination pagination-lg">
				<li><a href="<c:url value='/video?page=${PageCount }' />"
					class="but_ok_2"><i class="fa fa-arrow-right fa-lg"></i>&nbsp;
						Next</a></li>
			</ul>
		</div>
	</c:if>

	<c:if test="${fn:length(VideoList) != 15 }">
		<div class="container" align="right">
			<ul class="pagination pagination-lg">
				<li><a href="#" class="but_ok_2"><i
						class="fa fa-arrow-right fa-lg"></i>&nbsp; No More Videos</a></li>
			</ul>
		</div>
	</c:if>
</c:if>


<section class="aquraFilter" style="padding-top: 6em" id="content">
	<div class="container" style="padding: 2em;">
		<!-- start blog-filter-category -->
		<div class="col-sm-12">
			<div class="sectionTitle">
				<span class="heading-t3"></span>
				<div class="">
					<form action="searchYouTube" method="get" class="comment-form">
						<input id="q" name="q" type="text" value="${keyWord }"
							placeholder="type and hit Enter">

					</form>
				</div>
			</div>
			<!-- end contactForm -->
		</div>
	</div>
</section>