<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="zh">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>welcome to res</title>

<link rel="stylesheet" type="text/css" href="statics/css/loginstyle.css">
<script type="text/javascript" src="statics/js/user.js"></script>
<script type="text/javascript" src="statics/js/utils.js"></script>
<script type="text/javascript" src="statics/js/jquery.min.js"></script>

</head>
<body style="background-image: url('statics/images/timg.jpg');background-size:100%">
<div class="jq22-container" style="padding-top:10px">
	<div class="login-wrap" >
		<div class="login-html" style="background-color: rgba(0,0,0,0)">
			<input id="tab-1" type="radio" name="tab" class="sign-in" checked=""><label for="tab-1" class="tab">Sign In</label>
			<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
			<div class="login-form">
				<div class="sign-in-htm">
					<div class="group">
						<label for="user" class="label">UserName</label>
						<input id="userName" type="text" class="input">
					</div>
					<div class="group">
						<label for="pass" class="label">PassWord</label>
						<input id="passPwd" type="password" class="input" data-type="password">
					</div>
					<div class="group">
						<input id="check" type="checkbox" class="check">
						<label for="check"><span class="icon"></span> Keep me Signed in</label>
					</div>
					<div class="group">
						<p id="msg1" style="color:red"></p>
						<input type="button" class="button" value="Sign In" onclick="signIn()">
					</div>
					<div class="foot-lnk">
						<a href="www.shsxt.com">Forgot Password?</a>
					</div>
				</div>
				<div class="sign-up-htm">
					<div class="group">
						<label for="username" class="label">Username</label>
						<input id="username" type="text" class="input" >
					</div>
					<div class="group">
						<label for="passpwd" class="label">Password</label>
						<input id="passpwd" type="password" class="input" data-type="password">
					</div>
					<div class="group">
						<label for="pwdagain" class="label">Repeat Password</label>
						<input id="pwdagain" type="password" class="input" data-type="password">
					</div>
					<div class="group">
						<label for="email" class="label">Email Address</label>
						<input id="email" type="text" class="input">
					</div>
					<div class="group">
						<p id="msg2" style="color:red"></p>
						<input type="button" class="button" value="Sign Up" onclick="signUp()">
					</div>
					<div class="foot-lnk">
						<label for="tab-1">Already Member?</label>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>