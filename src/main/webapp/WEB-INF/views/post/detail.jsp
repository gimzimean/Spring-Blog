<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/nav.jsp"%>

<div class="container">
	<div class="card">
		<div class="card-header">
			<h4 class="card-title">${post.title}</h4>

		</div>
		<div class="card-body">
			<p class="card-text">${post.content}</p>
		</div>

		<div class="card-footer">

			<c:if test="${post.userId eq sessionScope.principal.id}">
				<a href="/post/update/${post.id}" class="btn btn-warning">수정</a>
				<button id="post--delete--submit" value="${post.id}"
					class="btn btn-danger">삭제</button>
			</c:if>

			<a href="/" class="btn btn-primary">목록</a>
		</div>
	</div>


<br>
<div class="card">
	<div class="form-group">
		<div class="card-body">
			<textarea rows="2" class="form-control" id="content"></textarea>
		</div>

		<div class="card-footer">
			<button id="comment--save--submit" class="btn btn-primary">register</button>
		</div>
	</div>
</div>


<br />

<div class="card">
	<div class="form-group">
		<div class="card-header">
			<h4 class="card-title">Comments</h4>

		</div>
		<div class="comment--items card-body">
			<div class="comment--item">
				<span class="comment--content">Contents </span> <span
					id="comment--delete--submit" value="1"> </span>
			</div>

			<div class="comment--item">
				<span class="comment--content">Contents </span> <span
					id="comment--delete--submit" value="2">X </span>
			</div>
			<div class="comment--item">
				<span class="comment--content">Contents </span> <span
					id="comment--delete--submit" value="3"> X</span>
			</div>
		</div>

	</div>
</div>




</div>





<%@include file="../include/footer.jsp"%>