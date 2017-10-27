<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%><head>
<!-- =============== START TOP HEADER ================ -->
<style type="text/css">
myIcon {
	margin-left: 1.8rem;
	float: right;
	width: 36px;
	display: block;
	padding: 0 8px;
	cursor: pointer;
	z-index: 6;
	top: 11px;
	position: relative;
}
</style>
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
		<a data-toggle="modal" data-target="#myModal"><img
			src="<%=request.getContextPath()%>/resources/img/arun/logo3.png"
			height="50px" width="50px" style="margin: 10px" alt="YouAreMy"></a>
	</div>
	<!-- end logo-container-top -->
	<!-- =============== END LOGO ================ -->
</div>
<!-- end topHeader -->
<!-- =============== END TOP HEADER ================ -->
<c:if test="${SESSION ne 'TRUE'}">
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Login</h4>
				</div>
				<div class="modal-body">

					<form name="login" action="login" method="post"
						class="comment-form">
						<input type="text" name="username" id="username"
							class="form-control" placeholder=" Username"> <input
							type="password" name="password" id="password"
							class="form-control" placeholder=" Password">
						<p class="form-submit" align="right">
							<input name="submit" type="submit" id="submit" value="Login">
						</p>
					</form>

					<!-- end contactForm -->
				</div>
				<div class="modal-footer"></div>
			</div>

		</div>
	</div>
</c:if>
<c:if test="${SESSION eq 'TRUE'}">

	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Login As ${USERNAME }</h4>
				</div>
				<div class="modal-body">
					<a href="<c:url value='/logout' />" class="btn btn-default">Logout</a>
				</div>
				<div class="modal-footer"></div>
			</div>

		</div>
	</div>
</c:if>