<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/nav.jsp"%>
<div class="container">
	<form:form action="/user/profile" method="PUT" enctype="multipart/form-data">
		<!--  put 안됨  id->name으로 바꾸ㅠㅓ야함 -->
		<input type="hidden" name="id" value="${sessionScope.principal.id}">
		<div class="form-group">
			<label for="username">username</label> <input type="text"
				class="form-control" placeholder="Enter Username" name="username"
				value="${sessionScope.principal.username }" readonly="readonly" />
		</div>

		<div class="form-group">
			<label for="password">Password</label> <input type="password"
				class="form-control" placeholder="Enter password" name="password"
				value="" />
		</div>

		<div class="form-group">
			<label for="email">email</label> <input type="email"
				class="form-control" placeholder="Enter email" name="email"
				value="${sessionScope.principal.email }" readonly="readonly" />
		</div>

		<div class="form-group">
			<label for="profile">profile</label> 
			<input type="file" class="form-control" name="profile" />
			<p class="my--profile">${sessionScope.principal.profile}</p>
		</div>
		<button class="btn btn-warning">edit</button>
	</form:form>
</div>


<%@include file="../include/footer.jsp"%>