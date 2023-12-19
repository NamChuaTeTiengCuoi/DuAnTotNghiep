<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<style>
.textContainer {
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
	max-width: 300px;
}

body {
	margin: 0;
	font-family: Arial, sans-serif;
}

.modal {
	display: none;
	position: fixed;
	z-index: 1;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgba(0, 0, 0, 0.4);
}

.modal-content {
	background-color: #fefefe;
	margin: 15% auto;
	padding: 20px;
	border: 1px solid #888;
	width: 80%;
	max-width: 400px;
}

.close {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}

.login-container input[type=text], .login-container input[type=password]
	{
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

.login-container button {
	background-color: #333;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	width: 100%;
}

.login-container button:hover {
	background-color: #ddd;
	color: black;
}
</style>
<script type="text/javascript">
	document.addEventListener("DOMContentLoaded", function() {
		// Cuộn đến vị trí 500 pixel từ trên cùng trang
		window.scrollTo(0, 700);
	});
</script>
<!-- Slideshow -->
<section class="page-wrapper">
	<!-- pricing plan -->

	<div class="pricing-plan container">
		<div class="spacer-clearfix" style="height: 80px;"></div>
		<div class="row">
			<div class="heading col-12">
				<div class="main-heading section-title" style="color: black;">Services</div>
				<div class="sub-heading" style="color: black;">
					<p>Welcome to the Natuspa Day Med Spa! A wellness luxury spa
						centerdedicatedto inspiring Life in Balance.</p>
				</div>
			</div>
			<div class="spacer-clearfix" style="height: 40px;"></div>
			<ul class="pricing-menu col-12">
				<c:forEach var="item" items="${page.content}">
					<li class="pricing-item all facial massage"><span class="logo"><a
							style="color: #4da92e;"><i class="natuspa-icon-oil"></i> </a></span>
						<div class="heading">


							<c:if test="${!isLogin}">
								<h4>
									<a style="color: black" href="/home/login" class="proceed-btn">${item.name}</a>
								</h4>
							</c:if>
							<c:if test="${isLogin}">
								<h4>
									<a style="color: black" href="/home/cart/add/${item.id}">${item.name}</a>
								</h4>
							</c:if>



							<div class="description textContainer">${item.descripsion}</div>
						</div> <span class="price">$${item.price}</span></li>
				</c:forEach>

			</ul>
			<span id="filter-option"></span>
		</div>
		<div class="spacer-clearfix" style="height: 60px;"></div>
	</div>
	<!-- appointment & form section -->

</section>


<script>
	// Open the modal
	function openModal() {
		document.getElementById('myModal').style.display = 'block';
	}

	// Close the modal
	function closeModal() {
		document.getElementById('myModal').style.display = 'none';
	}

	// Close the modal if the user clicks outside of it
	window.onclick = function(event) {
		var modal = document.getElementById('myModal');
		if (event.target == modal) {
			closeModal();
		}
	}
</script>