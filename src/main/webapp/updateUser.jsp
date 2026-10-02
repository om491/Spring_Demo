<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>User Update Form</title>

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
	min-height: 100vh;
}

/* NAVBAR */
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
}

.brand i {
	margin-right: 8px;
}

/* PAGE */
.page-container {
	min-height: calc(100vh - 70px);
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 35px 15px;
}

/* FORM CARD */
.form-card {
	width: 100%;
	max-width: 550px;
	background: #ffffff;
	border: 1px solid #e5e7eb;
	border-radius: 18px;
	padding: 35px;
	box-shadow: 0 12px 35px rgba(0, 0, 0, 0.07);
}

/* HEADER */
.form-header {
	text-align: center;
	margin-bottom: 30px;
}

.form-icon {
	width: 65px;
	height: 65px;
	margin: 0 auto 15px;
	border-radius: 50%;
	background: #eff6ff;
	color: #2563eb;
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 26px;
}

.form-header h2 {
	font-size: 24px;
	font-weight: 600;
	color: #111827;
	margin-bottom: 6px;
}

.form-header p {
	color: #9ca3af;
	font-size: 13px;
	margin: 0;
}

/* FORM */
.form-group {
	margin-bottom: 20px;
}

.form-label {
	color: #374151;
	font-size: 13px;
	font-weight: 600;
	margin-bottom: 8px;
}

.input-wrapper {
	position: relative;
}

.input-wrapper i {
	position: absolute;
	left: 15px;
	top: 50%;
	transform: translateY(-50%);
	color: #9ca3af;
	font-size: 14px;
	z-index: 2;
}

.form-control {
	height: 48px;
	border: 1px solid #d1d5db;
	border-radius: 9px;
	padding-left: 43px;
	font-family: 'Poppins', sans-serif;
	font-size: 13px;
	transition: 0.2s;
}

.form-control:focus {
	border-color: #2563eb;
	box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.10);
}

/* BUTTONS */
.button-group {
	display: flex;
	gap: 12px;
	margin-top: 28px;
}

.btn-update {
	flex: 1;
	height: 46px;
	border: none;
	border-radius: 9px;
	background: #2563eb;
	color: #ffffff;
	font-family: 'Poppins', sans-serif;
	font-size: 13px;
	font-weight: 600;
	transition: 0.2s;
}

.btn-update:hover {
	background: #1d4ed8;
	transform: translateY(-1px);
}

.btn-cancel {
	flex: 1;
	height: 46px;
	border: 1px solid #d1d5db;
	border-radius: 9px;
	background: #ffffff;
	color: #374151;
	text-decoration: none;
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 13px;
	font-weight: 600;
	transition: 0.2s;
}

.btn-cancel:hover {
	background: #f9fafb;
	color: #111827;
}

/* MOBILE */
@media ( max-width : 576px) {
	.navbar-custom {
		padding: 15px 18px;
	}
	.brand {
		font-size: 18px;
	}
	.page-container {
		padding: 25px 15px;
	}
	.form-card {
		padding: 25px 20px;
		border-radius: 15px;
	}
	.form-header h2 {
		font-size: 21px;
	}
	.button-group {
		flex-direction: column;
	}
	.btn-update, .btn-cancel {
		width: 100%;
	}
}
</style>

</head>

<body>

	<!-- NAVBAR -->

	<nav class="navbar-custom">

		<a href="#" class="brand"> <i class="fa-solid fa-user-pen"></i>
			User Management
		</a>

	</nav>


	<!-- PAGE -->

	<div class="page-container">

		<div class="form-card">

			<!-- HEADER -->

			<div class="form-header">

				<div class="form-icon">
					<i class="fa-solid fa-user-pen"></i>
				</div>

				<h2>Update User</h2>

				<p>Update the user's information below</p>

			</div>


			<!-- FORM -->

			<form action="updateUser" method="post">

				<!-- ID -->

				<div class="form-group">

					<label class="form-label"> User ID </label>

					<div class="input-wrapper">

						<i class="fa-solid fa-hashtag"></i> <input type="text" name="id"
							class="form-control" value="${e.id}" readonly>

					</div>

				</div>


				<!-- NAME -->

				<div class="form-group">

					<label class="form-label"> Full Name </label>

					<div class="input-wrapper">

						<i class="fa-solid fa-user"></i> <input type="text" name="name"
							class="form-control" value="${e.name}"
							placeholder="Enter full name" required>

					</div>

				</div>


				<!-- USERNAME -->

				<div class="form-group">

					<label class="form-label"> Username </label>

					<div class="input-wrapper">

						<i class="fa-solid fa-at"></i> <input type="text" name="userName"
							class="form-control" value="${e.userName}"
							placeholder="Enter username" required>

					</div>

				</div>


				<!-- SALARY -->

				<div class="form-group">

					<label class="form-label"> Salary </label>

					<div class="input-wrapper">

						<i class="fa-solid fa-indian-rupee-sign"></i> <input type="number"
							name="salary" class="form-control" value="${e.salary}"
							placeholder="Enter salary" step="0.01" required>

					</div>

				</div>


				<!-- BUTTONS -->

				<div class="button-group">

					<button type="submit" class="btn-update">

						<i class="fa-solid fa-floppy-disk"></i> Update User

					</button>


					<a href="dashboard" class="btn-cancel"> <i
						class="fa-solid fa-arrow-left me-2"></i> Cancel

					</a>

				</div>

			</form>

		</div>

	</div>

</body>
</html>