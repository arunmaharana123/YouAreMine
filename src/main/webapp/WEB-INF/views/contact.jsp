<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<style>
.contactTop h4 {
	font-size: 1.6rem;
	padding: 0;
	margin: 0;
	font-family: 'Montserrat', sans-serif;
	font-weight: 400;
	padding-bottom: 1rem;
	color: #757575;
}
</style>
<!-- =============== START BREADCRUMB ================ -->
<section class="no-mb">
	<div class="row">
		<div class="col-sm-12">
			<div class="before-FullscreenSlider"></div>
			<div class="breadcrumb-fullscreen-parent phone-menu-bg">
				<div
					class="breadcrumb breadcrumb-fullscreen alignleft small-description overlay almost-black-overlay"
					style="background-image: url(<%=request.getContextPath()%>/resources/img/arun/demo.png);"
					data-stellar-background-ratio="0.5"
					data-stellar-vertical-offset="0">
					<div class="breadTxt">
						<h1>Contact</h1>
						<p>
							Your time is limited, don't waste it living someone else's life.
							Don't be trapped<br>by dogma, which is living the result of
							other people's thinking.<br> Don't let the noise of other
							opinions drown<br> your own inner voice.
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

<!-- =============== START CONTACT ================ -->
<section class="contactSingle padding background-properties"
	id="content" style="background-color: rgba(255, 255, 255, 0.1);">
	<div class="container">
		<div class="row">
			<div class="col-sm-4">
				<div class="contactTop">
					<h2>Contact Information</h2>
					<h4>36 Kumarpani</h4>
					<h4>Sheragada</h4>
					<h4>Ganjam</h4>
					<h4>Odisha 761106</h4>

					<div class="contactInfo">
						<ul>
							<li style="text-transform:none">Email: <a href="#">info@youaremine.com</a></li>
							<li style="text-transform:none">Mobile: <a href="#">+91 9011822778</a></li>
							<li style="text-transform:none">Facebook: <a href="#">https://facebook.com/youaremy</a></li>
							<li style="text-transform:none">Instagram: <a href="#">https://instagram.com/youaremy</a></li>
							<li style="text-transform:none">Twitter: <a href="#">https://twitter.com/youaremy</a></li>
							<li style="text-transform:none">Google+: <a href="#">https://plus.google.com/youaremy</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- end col-sm-4 -->
			<div class="col-sm-7 col-sm-offset-1">
				<div class="singleBlogForm">
					<h2>Get in Touch</h2>
					<form action="#" method="post" class="comment-form">
						<input id="author" name="author" type="text" value=""
							aria-required="true" required="" placeholder="First Name *">
						<input id="lastName" name="email" type="text" value=""
							aria-required="true" required="" placeholder="Last Name">
						<input id="url" name="url" type="text" value=""
							placeholder="Subject* "> <input id="address" name="url"
							type="text" value="" placeholder="Email Address* ">
						<textarea name="comment" placeholder="Message..." rows="6"
							required=""></textarea>
						<p class="form-submit">
							<input name="submit" type="submit" id="submit" value="Send Email">
						</p>
					</form>
				</div>
				<!-- end contactForm -->
			</div>
			<!-- end col-sm-7 col-sm-offset-1 -->
		</div>
	</div>
	<!-- end container -->
</section>
<!-- =============== END CONTACT ================ -->
