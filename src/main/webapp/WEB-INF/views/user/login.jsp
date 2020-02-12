<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/nav.jsp"%>
<div class="container">
	<form id="form">
		<div class="form-group">
			<label for="username">username:</label> <input type="text"
				class="form-control" placeholder="Enter Username" id="username">
		</div>

		<div class="form-group">
			<label for="password">Password:</label> <input type="password"
				class="form-control" placeholder="Enter password" id="password">
		</div>

	</form>
	<button id="login--submit" class="btn btn-warning">Login</button>
</div>


<script>
	$(document).ready(function() {

		$('#form').keydown(function(key) {
			if (key.keyCode == 13) {
				$('#login--submit').click();
			}
		})

	})

	$('#login--submit').click(function() {
		var data = {
			username : $('#username').val(),
			password : $('#password').val()
		};
		$.ajax({
			type : 'POST',
			url : '/user/login',
			data : JSON.stringify(data),
			contentType : 'application/json; charset=utf-8',
			dataType : 'json'
		}).done(function(r) {
			alert('로그인 성공');
			location.href = '/';
		}).fail(function(r) {
			alert('로그인 실패');
		});

	});
</script>


<%@include file="../include/footer.jsp"%>