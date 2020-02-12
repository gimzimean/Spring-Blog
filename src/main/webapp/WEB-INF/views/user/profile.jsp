<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../include/nav.jsp"%>
<div class="container">
	<form action="/user/profile" method="POST" enctype="multipart/form-data"><!--  put 안됨  id->name으로 바꾸ㅠㅓ야함 -->
		<div class="form-group">
			<label for="username">username:</label> <input type="text" class="form-control" placeholder="Enter Username" name="username" value="ssar" readonly="readonly"/>
		</div>

		<div class="form-group">
			<label for="password">Password:</label> <input type="password" class="form-control" placeholder="Enter password" name="password" value="1234"/>
		</div>
		
		<div class="form-group">
			<label for="email">email:</label> <input type="email" class="form-control" placeholder="Enter email" name="email" value="ssar@nate.com" readonly="readonly"/>
		</div>
		
		<div class="form-group">
			<label for="profile">profile:</label> <input type="file" class="form-control" name="profile" value="myy.jpg"/>
		</div>
		<button class="btn btn-primary">edit</button>
		

	</form>
	
	
	
	<%@include file="../include/footer.jsp"%>