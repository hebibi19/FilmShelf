
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Movies</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</head>
<body class="bg-danger p-2 text-dark bg-opacity-25">

<div class="container text-center">
	<div class="row justify-content-md-center pt-3">
	<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
	  <ol class="breadcrumb">
	    <li class="breadcrumb-item"><a href="HomePage" class="link-danger">HomePage</a></li>
	    <li class="breadcrumb-item active" aria-current="page">Master List of Movies</li>
	  </ol>
	</nav>
</div>

	<div class="row justify-content-md-center p-3">
	<p class="text-uppercase fs-3 text-dark fw-bolder">To Be Watched Movies</p>
	<table class="table table-bordered border-dark border border-2" style="width:70%">
		<tr class="border-dark border border-3">
			<th class="text-uppercase">Title</th>
			<th class="text-uppercase">Director</th>
			<th class="text-uppercase">Year</th>
			<th class="text-uppercase">Genre</th>
			<th class="text-uppercase">Has Watched?</th>
			<th></th>
		</tr>
		
		<c:forEach items="${movies}" var="entry">
			<c:if test="${entry.watched == 'no'}">
				<tr>
					<td>${entry.name}</td>
					<td>${entry.director}</td>
					<td>${entry.year}</td>
					<td>${entry.genre}</td>
					<td>${entry.watched}</td>
					
					<td><a href="EditMovie?id=${entry.ID}" class="link-danger">Edit</a></td>
					<td><a href="DeleteMovie?id=${entry.ID}" class="link-danger">Delete</a></td>
					
				</tr>
			</c:if>
		</c:forEach>
		
	</table>
	</div>
	
	<div class="row justify-content-md-center p-3">
	
	<br>
	<p class="text-uppercase fs-3 text-dark fw-bolder">Watched Movies</p>
	
	<table class="table table-bordered border-dark border border-2" style="width:70%">
		<tr class="border-dark border border-3">
			<th class="text-uppercase">Title</th>
			<th class="text-uppercase">Director</th>
			<th class="text-uppercase">Year</th>
			<th class="text-uppercase">Genre</th>
			<th class="text-uppercase">Has Watched?</th>
			<th></th>
			<th></th>
			
		</tr>
		
		<c:forEach items="${movies}" var="entry">
			<c:if test="${entry.watched == 'yes'}">
				<tr>
					<td>${entry.name}</td>
					<td>${entry.director}</td>
					<td>${entry.year}</td>
					<td>${entry.genre}</td>
					<td>${entry.watched}</td>
					
					<td><a href="EditMovie?id=${entry.ID}" class="link-danger">Edit</a></td>
					<td><a href="DeleteMovie?id=${entry.ID}" class="link-danger">Delete</a></td>
					
				</tr>
			</c:if>
		</c:forEach>
		
	</table>
	</div>
	
	<p><a href="AddMovie" class="btn btn-danger border border-dark mt-3">Add Movie</a></p>
</div>
	
	
	

</body>
</html>