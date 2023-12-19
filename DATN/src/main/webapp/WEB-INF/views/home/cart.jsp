<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<!-- Breadcrumb Section Begin -->

<!-- Breadcrumb Section Begin -->

<!-- Shopping Cart Section Begin -->
<!-- Shopping Cart Section Begin -->
<section class="h-100 h-custom" style="border: 1px; margin: 5px; ">
	<div class="row">
		<div class="col-6 offset-3">
			<form action="/home/param" method="post">
				<div class="card" style="font-family: Arial;">
					<div class="card-header" style="background-color: #4DA92E">
						<h3 style="color: white;">Your Booking</h3>

					</div>
					<h5>${message}</h5>
					<div class="card-body" >
						<div class="col row">
							<c:forEach var="item" items="${CART_ITEMS}">
								<div class="col-6">

									<div class="form-group">
										<input type="hidden" style="border: none;" name="id"
											value="${item.id}" readonly>
										<!--  			<p>Service Name</p>-->
										<input class="font-weight-normal" type="text"
											style="border: none; width: 500px; font-size: 25px;"
											name="sername" value="${item.name}" readonly>

									</div>
									<div class="form-group">
										<!-- 	<p>Customer Name</p> -->
										<c:if test="${isLogin}">
											<input type="hidden" style="border: none;" name="cusname"
												value="${fullname}" readonly>
											<input type="hidden" style="border: none;" name="name"
												value="${username}" readonly>
										</c:if>

									</div>

									<div class="form-group">
										<!--  	<p>Service Price</p> -->
										<p style="font-size: 20px; display: inline;">$</p>
										<input type="text" style="border: none; font-size: 20px;"
											name="price" value="${item.price}" readonly>

									</div>
									<div class="form-group">
										<span class="font-weight-normal">Date selection</span> <input type="date" id="orderday"
											name="dayorder">

									</div>
									<div class="form-group">
										<label  class="font-weight-normal"
											for="exampleFormControlSelect1">Order-Time Select</label> <select
											class="form-control" id="exampleFormControlSelect1"
											name="timeOrder" style="width: 100px;">
											<option value="01">7:30</option>
											<option value="02">09:00</option>
											<option value="03">10:30</option>
											<option value="04">13:00</option>
											<option value="05">14:30</option>
											<option value="06">16:00</option>
											<option value="07">19:00</option>
											<option value="08">20:00</option>
										</select>
									</div>

									<div class="form-group">
										<p>Sale Code</p>
										<input type="text" id="sale" name="sale">

									</div>

									<div class="form-group">
										<!-- 	<p>ToTal Price</p> -->
										<input type="hidden" style="border: none;" name="total"
											value="${item.price}" readonly>

									</div>
								</div>
							</c:forEach>


						</div>
						<div class="card-footer text-muted">
							<button type="submit" class="btn btn-success"
								style="width: 100%; max-width: none; display: flex; justify-content: center; align-items: center;">
								Pay by VNPAY</button>

						</div>
					</div>
			</form>
		</div>

	</div>
</section>
<!-- Shopping Cart Section End -->