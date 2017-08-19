<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%><head>
<section class="aquraFilter" style="padding-top: 6em" id="content">
	<div class="container" style="padding: 2em;">
		<!-- start blog-filter-category -->
		<div class="categories" style="padding-bottom: 0rem">
			<ul class="clearfix">
				<li><a href="<c:url value='/recentnews'/>"> Recent News</a></li>
				<li><a href="<c:url value='/newscategory/World' />"> World</a></li>
				<li><a href="<c:url value='/newscategory/India' />"> India</a></li>
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
				<li><a href="<c:url value='/updatenews' />"> Updated News</a></li>
			</ul>
		</div>
	</div>
</section>
<!-- =============== START HOME-BLOG SECTION ================ -->
<section class="background-properties blogHomeSection"
	style="background-image: url(<%=request.getContextPath()%>/resources/img/arun/blog-home.jpg);">
	<div class="container">
		<div class="row">
			<!-- end sectionTtile -->
			<div class="col-sm-12">

				<c:forEach items="${NewsList }" var="news" varStatus="loop">
					<div class="col-sm-4" style="margin-bottom: 20px">
						<div class="blogBox">
							<div class="imgBox">
								<img src="${news.image }" style="height: 200px; width: 100%"
									alt="box-img">
							</div>
							<div class="blogBoxContent" style="height: 300px">
								<div class="blogHeader">
									<h1>
										<a href="<c:url value='/singleNews?id=${news.id}' />">${news.title }</a>
									</h1>
								</div>
								<div class="admin-list clearfix">
									<ul>
										<li><a href="${news.url }" target="blank">poweredBy :
												NewsApi.org</a></li>
									</ul>
								</div>
								<!-- end admin-list -->
								<div class="rmButton">
									<a href="<c:url value='/singleNews?id=${news.id}' />">Read
										More</a>
								</div>
							</div>
							<!-- end blogBoxContent -->
						</div>
						<!-- end blogBox -->
					</div>
					<!-- end col-sm-3 -->
				</c:forEach>
			</div>
			<!-- end col-sm-12 -->
		</div>
		<!-- end container -->
	</div>
	<!-- end row -->
</section>
<c:if test="${CategoryForward eq null }">
	<c:if test="${fn:length(NewsList) == 15 }">
		<div class="container" align="right">
			<ul class="pagination pagination-lg">
				<li><a href="<c:url value='/recentnews?page=${PageCount }' />"
					class="but_ok_2"><i class="fa fa-arrow-right fa-lg"></i>&nbsp;
						Next</a></li>
			</ul>
		</div>
	</c:if>

	<c:if test="${fn:length(NewsList) != 15 }">
		<div class="container" align="right">
			<ul class="pagination pagination-lg">
				<li><a href="#" class="but_ok_2"><i
						class="fa fa-arrow-right fa-lg"></i>&nbsp; No More News</a></li>
			</ul>
		</div>
	</c:if>
</c:if>

<c:if test="${CategoryForward ne null }">
	<c:if test="${fn:length(NewsList) == 15 }">
		<div class="container" align="right">
			<ul class="pagination pagination-lg">
				<li><a
					href="<c:url value='/newscategory/${CategoryForward }?page=${PageCount }' />"
					class="but_ok_2"><i class="fa fa-arrow-right fa-lg"></i>&nbsp;
						Next</a></li>
			</ul>
		</div>
	</c:if>

	<c:if test="${fn:length(NewsList) != 15 }">
		<div class="container" align="right">
			<ul class="pagination pagination-lg">
				<li><a href="#" class="but_ok_2"><i
						class="fa fa-arrow-right fa-lg"></i>&nbsp; No More News</a></li>
			</ul>
		</div>
	</c:if>
</c:if>
<!-- =============== END HOME-NLOG SECTION ================ -->
<section class="aquraFilter" id="content">
	<div class="container" style="padding: 2em;">
		<!-- start blog-filter-category -->
		<div class="categories" style="padding-bottom: 0rem">
			<ul class="clearfix" data-option-key="filter">
				<li><a href="<c:url value='/recentnews' />"> Recent</a></li>
				<li><a href="<c:url value='/newscategory/World' />"> World</a></li>
				<li><a href="<c:url value='/newscategory/India' />"> India</a></li>
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
				<li><a href="<c:url value='/updatenews' />"> Updated News</a></li>
				<li><a href="<c:url value='/updateAll' />"> Updated All</a></li>
			</ul>
		</div>
	</div>
</section>