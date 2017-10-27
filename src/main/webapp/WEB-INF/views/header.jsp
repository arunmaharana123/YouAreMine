<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%><head>
<!-- =============== START TOP HEADER ================ -->
<div class="topHeader">
	<div class="header">
		<div class="rightTopHeader">
			<!-- Open Menu Button -->
			<a class="open-menu"> <!-- Buttons Bars --> <span class="span-1"
				style="background: red"></span> <span class="span-2"
				style="background: red"></span> <span class="span-3"
				style="background: red"></span>
			</a>
		</div>
		<!-- end rightTopHeader -->
	</div>
	<!-- end header -->
	<!-- Menu Fixed Container -->
	<div class="menu-fixed-container">
		<!-- Menu Fixed Centred Container -->
		<nav>
			<!-- Menu Fixed Close Button -->
			<div class="x-filter">
				<span></span> <span></span>
			</div>
			<!-- Menu Fixed Primary List -->
			<ul>
				<!-- Menu Fixed Item -->
				<li><a href="<c:url value='/home' />">home</a></li>
				<li><a href="<c:url value='/newscategory/India' />">News</a></li>
				<li><a href="<c:url value='/photo' />">Photo</a></li>
				<li><a href="<c:url value='/music' />">Music</a></li>
				<li><a href="<c:url value='/video' />">Video</a></li>
				<li><a href="<c:url value='/apps' />">Apps</a></li>
				<li><a href="<c:url value='/contact' />">Contact</a></li>
				<li><a href="<c:url value='/about' />">About</a></li>
			</ul>
			<!-- Menu Fixed Close Button -->
			<div class="x-filter">
				<span></span> <span></span>
			</div>
		</nav>
	</div>
	<!-- end menu-fixed-container -->
	<!-- =============== STAR LOGO ================ -->
	<div class="logo-container-top">
		<a href="<c:url value='/home' />"><img 
			src="<%=request.getContextPath()%>/resources/img/arun/logo3.png" height="50px" width="50px" style="margin: 10px"
			alt="YouAreMy"></a>
	</div>
	<!-- end logo-container-top -->
	<!-- =============== END LOGO ================ -->
</div>
<!-- end topHeader -->
<!-- =============== END TOP HEADER ================ -->