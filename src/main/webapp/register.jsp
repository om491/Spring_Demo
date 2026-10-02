<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Register User</title>

<!-- Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB"
	crossorigin="anonymous">

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
	min-height: 100vh;
	font-family: 'Poppins', sans-serif;
	background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 30px 15px;
}

.register-container {
	width: 100%;
	max-width: 520px;
}

.register-card {
	background: rgba(255, 255, 255, 0.97);
	border-radius: 20px;
	padding: 35px 40px;
	box-shadow: 0 20px 50px rgba(0, 0, 0, 0.20);
	animation: slideUp 0.6s ease;
}

@
keyframes slideUp {from { opacity:0;
	transform: translateY(30px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}
.form-header {
	text-align: center;
	margin-bottom: 30px;
}

.icon-circle {
	width: 70px;
	height: 70px;
	margin: 0 auto 15px;
	border-radius: 50%;
	background: linear-gradient(135deg, #667eea, #764ba2);
	display: flex;
	justify-content: center;
	align-items: center;
	color: white;
	font-size: 30px;
	box-shadow: 0 8px 20px rgba(102, 126, 234, 0.35);
}

.form-header h1 {
	font-size: 28px;
	font-weight: 700;
	color: #222;
	margin-bottom: 6px;
}

.form-header p {
	color: #777;
	font-size: 14px;
	margin-bottom: 0;
}

.form-label {
	font-weight: 600;
	color: #333;
	font-size: 14px;
	margin-bottom: 8px;
}

.form-control {
	height: 48px;
	border: 1px solid #ddd;
	border-radius: 10px;
	padding: 10px 14px;
	font-size: 14px;
	transition: all 0.3s ease;
}

.form-control:focus {
	border-color: #667eea;
	box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.12);
	outline: none;
}

.mb-3 {
	margin-bottom: 20px !important;
}

.register-btn {
	width: 100%;
	height: 50px;
	border: none;
	border-radius: 10px;
	background: linear-gradient(135deg, #667eea, #764ba2);
	color: white;
	font-size: 16px;
	font-weight: 600;
	margin-top: 5px;
	transition: all 0.3s ease;
}

.register-btn:hover {
	transform: translateY(-2px);
	box-shadow: 0 8px 20px rgba(102, 126, 234, 0.35);
	color: white;
}

.register-btn:active {
	transform: translateY(0);
}

.footer-text {
	text-align: center;
	margin-top: 22px;
	font-size: 12px;
	color: #888;
}

/* Mobile */
@media ( max-width : 576px) {
	body {
		padding: 20px 12px;
	}
	.resgister-card {
		padding: 28px 22px;
		border-radius: 16px;
	}
	.form-header h1 {
		font-size: 24px;
	}
	.icon-circle {
		width: 60px;
		height: 60px;
		font-size: 25px;
	}
}
</style>

</head>

<body>

	<div class="register-container">

		<div class="register-card">

			<!-- Header -->
			<div class="form-header">

				<div class="icon-circle">👤</div>

				<h1>Register User</h1>

				<p>Enter your details to create a new user</p>

			</div>


			<!-- Register Form -->
			<form action="registerUser" method="GET">

				<!-- ID -->
				<div class="mb-3">

					<label class="form-label"> ID </label> <input type="text"
						class="form-control" name="id" placeholder="Enter user ID"
						required>

				</div>


				<!-- Name -->
				<div class="mb-3">

					<label class="form-label"> Name </label> <input type="text"
						class="form-control" name="name" placeholder="Enter full name"
						required>

				</div>


				<!-- Salary -->
				<div class="mb-3">

					<label class="form-label"> Salary </label> <input type="text"
						class="form-control" name="salary" placeholder="Enter salary"
						required>

				</div>


				<!-- Username -->
				<div class="mb-3">

					<label class="form-label"> UserName </label> <input type="email"
						class="form-control" name="userName"
						placeholder="Enter email / username" required>

				</div>


				<!-- Register Button -->
				<button type="submit" class="register-btn">Register User</button>

			</form>


			<div class="footer-text">© 2026 User Registration System</div>

		</div>

	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrVWxXK/BmnVDxM+Ds2scQbITxI"
		crossorigin="anonymous">
		
	</script>

</body>
</html>