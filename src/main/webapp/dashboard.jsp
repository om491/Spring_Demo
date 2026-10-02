<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
String userName = (String) session.getAttribute("userName");
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Admin Dashboard</title>

<!-- Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap"
	rel="stylesheet">


<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: 'Poppins', sans-serif;
	background: #f6f8fc;
	color: #1f2937;
}

/* ================= NAVBAR ================= */
.navbar-custom {
	background: #ffffff;
	padding: 18px 35px;
	border-bottom: 1px solid #e5e7eb;
	box-shadow: 0 2px 12px rgba(0, 0, 0, 0.04);
}

.brand {
	color: #111827;
	font-size: 21px;
	font-weight: 700;
	text-decoration: none;
	letter-spacing: -0.3px;
}

.logged-user {
	color: #6b7280;
	font-size: 14px;
}

.logged-user strong {
	color: #111827;
	font-weight: 600;
}

/* ================= MAIN ================= */
.main-container {
	padding: 35px;
}

.container-fluid {
	max-width: 1400px;
	margin: auto;
}

/* ================= WELCOME CARD ================= */
.welcome-card {
	position: relative;
	overflow: hidden;
	background: linear-gradient(135deg, #111827 0%, #374151 100%);
	color: #ffffff;
	padding: 38px 40px;
	border-radius: 18px;
	margin-bottom: 28px;
	box-shadow: 0 10px 30px rgba(17, 24, 39, 0.12);
}

.welcome-card::after {
	content: "";
	position: absolute;
	width: 220px;
	height: 220px;
	border-radius: 50%;
	background: rgba(255, 255, 255, 0.05);
	right: -60px;
	top: -80px;
}

.welcome-card::before {
	content: "";
	position: absolute;
	width: 140px;
	height: 140px;
	border-radius: 50%;
	background: rgba(255, 255, 255, 0.04);
	right: 100px;
	bottom: -90px;
}

.welcome-card h1 {
	position: relative;
	z-index: 2;
	font-size: 28px;
	font-weight: 600;
	margin-bottom: 10px;
}

.welcome-card p {
	position: relative;
	z-index: 2;
	margin: 0;
	color: #d1d5db;
	font-size: 14px;
}

/* ================= USERS CARD ================= */
.users-card {
	background: #ffffff;
	padding: 28px;
	border-radius: 18px;
	border: 1px solid #e5e7eb;
	box-shadow: 0 8px 25px rgba(0, 0, 0, 0.05);
}

/* ================= TITLE ================= */
.users-title {
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin-bottom: 22px;
}

.users-title h2 {
	font-size: 20px;
	margin: 0;
	font-weight: 600;
	color: #111827;
}

/* ================= USERS BADGE ================= */
.users-title .badge {
	background: #111827 !important;
	padding: 7px 14px;
	border-radius: 20px;
	font-size: 12px;
	font-weight: 500;
}

/* ================= TABLE ================= */
.table {
	margin-bottom: 0;
	border-collapse: separate;
	border-spacing: 0 8px;
}

.table thead th {
	background: #f8fafc;
	color: #6b7280;
	border: none;
	padding: 13px 16px;
	font-size: 12px;
	font-weight: 600;
	text-transform: uppercase;
	letter-spacing: 0.5px;
}

.table thead th:first-child {
	border-radius: 10px 0 0 10px;
}

.table thead th:last-child {
	border-radius: 0 10px 10px 0;
}

/* ================= TABLE ROW ================= */
.table tbody tr {
	background: #ffffff;
	transition: all 0.2s ease;
}

.table tbody tr:hover {
	background: #f9fafb;
	transform: translateY(-1px);
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.04);
}

.table tbody td {
	padding: 16px;
	vertical-align: middle;
	border-top: 1px solid #f1f5f9;
	border-bottom: 1px solid #f1f5f9;
	color: #374151;
	font-size: 14px;
}

.table tbody td:first-child {
	border-left: 1px solid #f1f5f9;
	border-radius: 10px 0 0 10px;
	font-weight: 600;
}

.table tbody td:last-child {
	border-right: 1px solid #f1f5f9;
	border-radius: 0 10px 10px 0;
}

/* ================= ID BADGE ================= */
.id-badge {
	display: inline-block;
	background: #f3f4f6;
	color: #111827;
	padding: 5px 11px;
	border-radius: 8px;
	font-size: 12px;
	font-weight: 600;
}

/* ================= USERNAME ================= */
.username {
	font-weight: 600;
	color: #111827;
}

/* ================= ACTION BUTTONS ================= */
.action-buttons {
	display: flex;
	gap: 8px;
	align-items: center;
}

.action-btn {
	width: 36px;
	height: 36px;
	border: none;
	border-radius: 8px;
	display: inline-flex;
	align-items: center;
	justify-content: center;
	color: #ffffff;
	text-decoration: none;
	transition: all 0.2s ease;
	cursor: pointer;
}

/* UPDATE */
.update-btn {
	background: #2563eb;
}

.update-btn:hover {
	background: #1d4ed8;
	color: #ffffff;
	transform: translateY(-2px);
	box-shadow: 0 5px 12px rgba(37, 99, 235, 0.25);
}

/* DELETE */
.delete-btn {
	background: #dc2626;
}

.delete-btn:hover {
	background: #b91c1c;
	color: #ffffff;
	transform: translateY(-2px);
	box-shadow: 0 5px 12px rgba(220, 38, 38, 0.25);
}

.action-btn i {
	font-size: 14px;
}

/* ================= NO USER ================= */
.no-user {
	text-align: center;
	padding: 40px 20px;
	color: #9ca3af;
	font-size: 14px;
}

/* ================= MOBILE ================= */
@media ( max-width : 768px) {
	.navbar-custom {
		padding: 15px 18px;
	}
	.brand {
		font-size: 18px;
	}
	.logged-user {
		font-size: 12px;
	}
	.main-container {
		padding: 20px 15px;
	}
	.welcome-card {
		padding: 25px 22px;
		border-radius: 15px;
	}
	.welcome-card h1 {
		font-size: 21px;
		line-height: 1.4;
	}
	.welcome-card p {
		font-size: 12px;
	}
	.users-card {
		padding: 18px 15px;
		border-radius: 15px;
	}
	.users-title h2 {
		font-size: 17px;
	}
	.users-title .badge {
		font-size: 10px;
		padding: 6px 10px;
	}
	.table thead th, .table tbody td {
		padding: 12px 10px;
		font-size: 12px;
	}
	.action-btn {
		width: 32px;
		height: 32px;
	}
	.action-btn i {
		font-size: 12px;
	}
}
</style>

</head>


<body>


	<!-- ================= NAVBAR ================= -->
	<h2 style="color:green">${dsuccessMsg}</h2>
	<h2 style="color:red">${derrorMsg}</h2>
	<nav class="navbar-custom">

		<div
			class="container-fluid d-flex justify-content-between align-items-center">

			<a href="#" class="brand"> <i class="fa-solid fa-gauge-high"></i>
				Admin Dashboard
			</a>

			<div class="logged-user">

				Welcome, <strong><%=userName%></strong>

			</div>

		</div>

	</nav>


	<!-- ================= MAIN ================= -->

	<div class="main-container">

		<div class="container-fluid">


			<!-- ================= WELCOME CARD ================= -->

			<div class="welcome-card">

				<h1>
					Welcome to Dashboard,
					<%=userName%>
				</h1>

				<p>Manage and view all registered users.</p>

			</div>


			<!-- ================= USERS LIST ================= -->

			<div class="users-card">


				<!-- TITLE -->

				<div class="users-title">

					<h2>
						<i class="fa-solid fa-users"></i> Users List
					</h2>

					<span class="badge bg-dark"> Users </span>

				</div>


				<!-- TABLE -->

				<div class="table-responsive">

					<table class="table table-hover align-middle">


						<!-- TABLE HEADER -->

						<thead>

							<tr>

								<th>ID</th>

								<th>Name</th>

								<th>Username</th>

								<th>Action</th>

							</tr>

						</thead>


						<!-- TABLE BODY -->

						<tbody>


							<!-- USERS -->

							<c:forEach var="e" items="${list}">

								<tr>


									<!-- ID -->

									<td><span class="id-badge"> ${e.id} </span></td>


									<!-- NAME -->

									<td>${e.name}</td>


									<!-- USERNAME -->

									<td class="username">${e.userName}</td>


									<!-- ACTION -->

									<td>

										<div class="action-buttons">


											<!-- UPDATE -->

											<a href="updateUser?id=${e.id}" class="action-btn update-btn"
												title="Update"> <i class="fa-solid fa-pen-to-square"></i>

											</a>


											<!-- DELETE -->

											<a href="deleteUser?id=${e.id}" class="action-btn delete-btn"
												title="Delete"
												onclick="return confirm('Are you sure you want to delete ${e.userName} ?');">

												<i class="fa-solid fa-trash"></i>

											</a>


										</div>

									</td>


								</tr>

							</c:forEach>


							<!-- NO USERS -->

							<c:if test="${empty list}">

								<tr>

									<td colspan="4">

										<div class="no-user">

											<i class="fa-solid fa-user-slash"></i> <br> <br> No
											users found.

										</div>

									</td>

								</tr>

							</c:if>


						</tbody>

					</table>

				</div>

			</div>

		</div>

	</div>


</body>

</html>