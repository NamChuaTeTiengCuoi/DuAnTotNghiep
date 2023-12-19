<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
/* Thiết lập chiều rộng của div */
.co {
	display: flex;
}

/* Phần 1 chiếm 70% chiều rộng của container */
.part1 {
	flex: 1;
}

/* Phần 2 chiếm 30% chiều rộng của container */
.part2 {
	flex: 1;
}

.divider {
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	width: 1px;
	background-color: black;
	margin-left: -150px"
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-bottom: 20px;
}

th, td {
	border: 1px solid #ddd;
	padding: 8px;
	text-align: left;
}

th {
	background-color: #f2f2f2;
}
</style>
<!-- Breadcrumb Section Begin -->

<!-- Breadcrumb Form Section Begin -->

<!-- Register Section Begin -->
<div class="register-login-section spad">
	<div class="co">
		<div class="part1">
			<div class="container" style="width: 150%; margin-left: -150px">
				<div class="row">
					<div class="col-lg-6 offset-lg-3">
						<div class="login-form">
                        <h2>Your Profile</h2>
                        <form method="post">
                        <h5 class="text-danger">${message}</h5>
                            <div class="group-input">

                                <input type="hidden" id="username" name="username" value="${username}" readonly>
                            </div>
                            <div class="group-input">

                                <input type="hidden" id="password" name="password" value="${password}" readonly>
                            </div>

                            <div class="group-input">
                                <label for="con-pass">Fullname </label>
                                <input type="text" id="fullname" name="fullname" value="${fullname}" >
                            </div>

                            <div class="group-input">
                                <label for="con-pass">Phone </label>
                                <input type="text" id="phone" name="phone" value="${phone}" >
                            </div>
                            <div class="group-input">
                                <label for="con-pass">Email </label>
                                <input type="text" id="email" name="email" value="${email}" >
                            </div>

                             <button type="submit" class="site-btn login-btn">Change Profile</button>
                        </form>
                    </div>
					</div>
				</div>

			</div>

		</div>

		
		<div class="part2">
			<div class="container" style="width: 150%; margin-left: -250px">
				<div class="row">
					<div class="col-lg-6 offset-lg-3">
						<div class="login-form">
							<h2>Booking History</h2>
							<table class="table text-center">
								<thead>
									<tr>
										<th style="font-weight: bolder; font-size: 18px">Day Booking</th>
										<th style="font-weight: bolder; font-size: 18px">Day Select</th>
										<th style="font-weight: bolder; font-size: 18px">Services</th>
										<th style="font-weight: bolder; font-size: 18px">Total</th>
										<th style="font-weight: bolder; font-size: 18px">Timeline</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="items" items="${bill}">
										<tr>
											<td>${items.time}</td>
											<td>${items.dayorder}</td>
											<td>${items.service.name}</td>
											<td>${items.total}</td>	
											<td>${items.timeOrder.timeline}</td>											
										</tr>
									</c:forEach>
								</tbody>
							</table>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- Register Form Section End -->