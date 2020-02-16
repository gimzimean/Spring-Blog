<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/nav.jsp"%>
<div class="container">
	<form>
		<div class="form-group">
			<label for="title">Title</label> <input type="text"
				class="form-control" placeholder="Enter title" id="title"
				value="${post.title}">
		</div>

		<div class="form-group">
			<label for="content">Content</label>
			<textarea rows="5" class="form-control" id="content">${post.content}</textarea>
		</div>

	</form>
	<button id="update--submit" class="btn btn-warning" value="${post.id}">update</button>
</div>

<script>
	$('#update--submit').on('click', function() {
		var data = {
			id : $('#update--submit').val(),
			title : $('#title').val(),
			content : $('#content').val()
		}

		$.ajax({
			type : 'PUT',
			url : '/post/update',
			data : JSON.stringify(data),
			contentType : "application/json; charset=utf-8",
			dataType : 'json'
		}).done(function(r) {
			if (r.statusCode == 200) {
				alert('수정 성공');
				location.href = '/';
			} else {
				alert('수정 실패');
			}
		}).fail(function(r) {
			alert('수정 실패');
		});

	});
</script>


<%@include file="../include/footer.jsp"%>