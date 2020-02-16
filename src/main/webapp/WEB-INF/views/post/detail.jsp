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
				<a href="/post/update/${post.id}" class="btn btn-warning">edit</a>
				<button id="post--delete--submit" value="${post.id}"
					class="btn btn-danger">delete</button>
			</c:if>

			<a href="/" class="btn btn-primary">list</a>
		</div>
	</div>


	<br>
	<div class="card">
		<div class="form-group">
			<div class="card-body">
				<input type="hidden" id="postId" value="${post.id }" /> <input
					type="hidden" id="userId" value="${sessionScope.principal.id }" />
				<textarea rows="2" class="form-control" id="content"></textarea>
			</div>

			<div class="card-footer">
				<button id="comment--save--submit" class="btn btn-primary">submit</button>
			</div>
		</div>
	</div>


	<br />

	<div class="card">
		<div class="form-group">
			<div class="card-header">
				<h4 class="card-title">Comments</h4>

			</div>

			<ul id="comment--items" class="list-group">
				<c:forEach var="comment" items="${comments }">
					<li id="comment--item--${comment.id }"
						class="list-group-item d-flex justify-content-between align-items-center">
						<div class="font-italic">${comment.content }</div>
						<div class="badge badge-light badge-pill ml-auto">${comment.username }</div>
						<c:if test="${comment.userId eq sessionScope.principal.id }">
							<button onclick="commentDelete(${comment.id})"
								class="badge badge-secondary badge-pill">delete</button>
						</c:if>
					</li>
				</c:forEach>
			</ul>
		</div>
	</div>
</div>

<script src="/js/detail.js"></script>




<%@include file="../include/footer.jsp"%>