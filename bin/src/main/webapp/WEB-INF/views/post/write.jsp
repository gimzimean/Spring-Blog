<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/nav.jsp"%>
<div class="container">
	<form>
		<div class="form-group">
			<label for="title">Title</label> <input type="text"
				class="form-control" placeholder="Enter title" id="title">
		</div>

		<div class="form-group">
			<label for="content">Content</label>
			<textarea rows="5" class="form-control" id="content"></textarea>
		</div>

	</form>
	<button id="write--submit" class="btn btn-warning">save</button>

</div>


<script>
	$('#write--submit').on('click', function() {
		var data = {
			title : $('#title').val(),
			content : $('#content').val()
		}

		$.ajax({
			type : 'POST',
			url : '/post/write',
			data : JSON.stringify(data),
			contentType : "application/json; charset=utf-8",
			dataType : 'json'
		}).done(function(r) {
			if (r.statusCode == 200) {
				alert('포스팅 성공');
				location.href = '/';
			} else {
				alert('포스팅 실패');
			}
		}).fail(function(r) {
			alert('포스팅 실패');
		});

	});
</script>





<%@include file="../include/footer.jsp"%>