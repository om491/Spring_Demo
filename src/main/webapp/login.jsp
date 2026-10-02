<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Login</title>

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: Arial, sans-serif;
}

body {
	min-height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	background: linear-gradient(135deg, #667eea, #764ba2);
}

.login-box {
	width: 350px;
	padding: 35px;
	background: #fff;
	border-radius: 12px;
	box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
}

.login-box h2 {
	text-align: center;
	margin-bottom: 25px;
	color: #333;
}

.input-box {
	margin-bottom: 20px;
}

.input-box label {
	display: block;
	margin-bottom: 8px;
	color: #555;
	font-weight: bold;
}

.input-box input {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 6px;
	outline: none;
	font-size: 15px;
}

.input-box input:focus {
	border-color: #667eea;
}

.login-btn {
	width: 100%;
	padding: 12px;
	border: none;
	border-radius: 6px;
	background: #667eea;
	color: white;
	font-size: 16px;
	font-weight: bold;
	cursor: pointer;
}

.login-btn:hover {
	background: #5568d8;
}
</style>
</head>

<body>

	<div class="login-box">

		<h2>Login</h2>

		<form action="loginUser" method="post"> 

			<div class="input-box">
				<label>Username</label> <input type="text"
					name="userName" placeholder="Enter username" required>
			</div>

			<div class="input-box">
				<label >Password</label> <input type="password"
					id="password" name="password" placeholder="Enter password" required>
			</div>

			<button type="submit" class="login-btn">Login</button>

		</form>

	</div>

</body>
</html>