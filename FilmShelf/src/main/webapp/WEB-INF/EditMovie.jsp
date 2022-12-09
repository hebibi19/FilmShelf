<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Movie</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</head>
<body class="bg-danger p-2 text-dark bg-opacity-25">

<div class="container text-center">
	<div class="row justify-content-md-center pt-3">
	<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
	  <ol class="breadcrumb">
	    <li class="breadcrumb-item"><a href="HomePage" class="link-danger">HomePage</a></li>
	    <li class="breadcrumb-item active" ><a href="Shelves" class="link-danger">Movies by Genre</a></li>
	    <li class="breadcrumb-item active" aria-current="page">Edit Movie</li>
	  </ol>
	</nav>
</div>

	<form method="post">
	<div class="row justify-content-md-center p-3">
		<table class="table table-bordered border-dark border border-2" style="width:50%">
			<tr>
				<th class="text-uppercase">Movie Title</th>
				<td><input class="bg-light bg-opacity-30 border border-danger" type="text" name="name" value="${movie.name}"></td>
			</tr>
			<tr>
				<th class="text-uppercase">Director</th>
				<td><input class="bg-light bg-opacity-30 border border-danger" type="text" name="director" value="${movie.director}"></td>
			</tr>
			<tr>
				<th class="text-uppercase">Year of Release</th>
				<td><input class="bg-light bg-opacity-30 border border-danger" type="text" name="year" value="${movie.year}"></td>
			</tr>
			<tr>
				<th class="text-uppercase">Genre</th>
				<td>
					<select class="bg-light bg-opacity-30 border border-danger" name="genre" id="genre">
						<c:forEach items="${shelves}" var="s">
							<c:if test="${movie.genre==s.genre}">
								<option value="${s.genre}"> ${s.genre}</option>
							</c:if>
						</c:forEach>
					
						<c:forEach items="${shelves}" var="s">
							<c:if test="${movie.genre!=s.genre}">
								<option value="${s.genre}"> ${s.genre}</option>
							</c:if>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<th class="text-uppercase">Has Watched?</th>
				<td>
					<c:if test="${movie.watched=='no'}">
						<input class="form-check-input" type="radio" name="yesno" value="yes"><label class="me-4">yes</label>
						<input class="form-check-input" type="radio" name="yesno" value="no" checked>no
					</c:if>
					
					<c:if test="${movie.watched=='yes'}">
						<input class="form-check-input" type="radio" name="yesno" value="yes" checked><label class="me-4">yes</label>
						<input class="form-check-input" type="radio" name="yesno" value="no">no
					</c:if>
				</td>
			</tr>
		</table>
		
		</div>
			<button class="btn btn-danger border border-dark ps-5 pe-5">Save</button>
		
	</form>
	
	<p><a href="Movies" class="btn btn-danger border border-dark mt-3">Cancel</a></p>
	</div>

</body>
</html>