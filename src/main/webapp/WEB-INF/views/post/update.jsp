<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../include/nav.jsp"%>
<div class="container">
	<form>
		<div class="form-group">
			<label for="title">Title</label> <input type="text" class="form-control" placeholder="Enter title" id="title" value="제목입니다">
		</div>

		<div class="form-group">
			<label for="content">Content</label>
			<textarea rows="5" class="form-control" id="content">내용입니다</textarea>
		</div>

	</form>
	<button id="update--submit" class="btn btn-primary">update</button>


	<%@include file="../include/footer.jsp"%>