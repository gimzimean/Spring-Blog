<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../include/nav.jsp"%>

<div class="container">
	<div class="card">
		<div class="card-header">
			<h4 class="card-title">Title</h4>

		</div>
		<div class="card-body">
			<p class="card-text">Content</p>

		</div>
		<div class="card-footer">
			<button id="post--update--submit" class="btn btn-warning">edit</button>
			<button id="post--delete--submit" class="btn btn-danger">delete</button>
			<a href="/" class="btn btn-primary">list</a>

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
					<span class="comment--content">Contents </span> <span id="comment--delete--submit" value="1"> </span>
				</div>

				<div class="comment--item">
					<span class="comment--content">Contents </span> <span  id="comment--delete--submit"  value="2">X </span>
				</div>
				<div class="comment--item">
					<span class="comment--content">Contents </span> <span id="comment--delete--submit"  value="3"> X</span>
				</div>
			</div>

		</div>
	</div>




</div>





<%@include file="../include/footer.jsp"%>