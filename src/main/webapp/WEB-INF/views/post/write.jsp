<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../include/nav.jsp"%>
<div class="container">
	<form>
		<div class="form-group">
			<label for="title">Title</label> <input type="text" class="form-control" placeholder="Enter title" id="title">
		</div>

		<div class="form-group">
			<label for="content">Content</label>
			<textarea rows="5" class="form-control" id="content"></textarea>
		</div>

	</form>
	<button id="write--submit" class="btn btn-primary">save</button>


	<%@include file="../include/footer.jsp"%>