<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/nav.jsp"%>

<div class="container">
	<form id="form">
		<div class="form-group">
			<label for="username">username:</label> <input type="text"
				class="form-control" placeholder="Enter Username" id="username"
				maxlength="50">
		</div>

		<div class="form-group">
			<label for="password">Password:</label> <input type="password"
				class="form-control" placeholder="Enter password" id="password"
				maxlength="15">
		</div>


		<div class="form-group">
			<label for="email">email:</label> <input type="email"
				class="form-control" placeholder="Enter email" id="email"
				maxlength="30">
		</div>

	</form>
	<button id="join--submit" class="btn btn-warning">Sign in</button>

</div>



<script>
	$(document).ready(function() {

		$('#form').keydown(function(key) {
			if (key.keyCode == 13) {
				$('#join--submit').click();
			}
		})

	})

	$('#join--submit').click(function() {
			var data = {
				username : $('#username').val(),
				password : $('#password').val(),
				email : $('#email').val()
			};

			$.ajax({
				type : 'POST',
				url : '/user/join',
				data : JSON.stringify(data),
				contentType : 'application/json; charset=utf-8',
				dataType : 'json'
			}).done(function(r) {
				if (r.statusCode == 200) {
					alert('회원가입 성공.');
					location.href = '/user/login';
				} else {
					if (r.msg == '아이디중복') {
						alert('아이디가 중복되었습니다.');
					}
					alert('회원가입 실패');
				}
			}).fail(function(r) {
				console.log(r);
				var message = r.responseJSON;
				var email = message['email'];
				var username = message['username'];
				var password = message['password'];
				$('#email').after(email);
				$('#username').after(username);
				$('#password').after(password);
				alert('회원가입 실패');

			});

	});
</script>
<%@include file="../include/footer.jsp"%>