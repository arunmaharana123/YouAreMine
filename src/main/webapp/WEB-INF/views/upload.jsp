<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%><head>

<section class="padding albumsHome">
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<div class="sectionTitle paddingBottom">
					<span class="heading-t3"></span>
					<h2>
						<a href="albumsFullBackground.html">Upload Albums</a>
					</h2>

					<div class="">
						<form action="uploadPhoto" method="post"
							enctype="multipart/form-data" class="comment-form">
							<select name="category" id="category"
								style="width: 100%; height: 40px; margin-bottom: 40px;">
								<option value="Bollywood">---Select Category---</option>
								<c:forEach items="${CategoryList }" var="cl">
									<option value="${cl }">${cl }</option>
								</c:forEach>
							</select> <input id="lastName" name="tagname" type="text"
								placeholder="tag Name">
							<div
								style="width: 100%; height: 45px; margin-bottom: 40px; border: 1px solid #ff0000; vertical-align: middle;">
								<input type="file" name="filename" id="name" multiple="multiple"
									style="padding: 10px" accept="image/*">
							</div>
							<p class="form-submit">
								<input name="submit" type="submit" id="submit" value="Submit">
							</p>
						</form>
					</div>
				</div>
				<!-- end contactForm -->
			</div>
			<!-- end col-sm-12 -->
		</div>
	</div>
</section>
<!-- end content area -->