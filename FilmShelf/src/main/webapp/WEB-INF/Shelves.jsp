<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shelves</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</head>
<body class="bg-danger p-2 text-dark bg-opacity-25">

<div class="container text-center">
	<div class="row justify-content-md-center pt-3">
	<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
	  <ol class="breadcrumb">
	    <li class="breadcrumb-item"><a href="HomePage" class="link-danger">HomePage</a></li>
	    <li class="breadcrumb-item active" aria-current="page">Movies by Genre</li>
	  </ol>
	</nav>
</div>
	
	<div class="row justify-content-md-center p-3">
	<table class="table table-bordered border-dark border border-2" style="width:70%">
		<tr class="border-dark border border-3">
			<th class="text-uppercase">Genre</th>
			<th class="text-uppercase">Movies</th>
			<th></th>
			<th></th>
			
		</tr>
		<c:forEach items="${shelves}" var="shelf">
			<tr>
				<td class="text-uppercase">${shelf.genre}</td>
				<td>
					<c:forEach items="${movies}" var="movie">
						<c:if test="${movie.genre==shelf.genre}">
							<c:if test="${movie.watched == 'no' }">
								- ${movie.name} <br>
							</c:if>
						</c:if>
					</c:forEach>
					
					<c:forEach items="${movies}" var="movie">
						<c:if test="${movie.genre==shelf.genre}">
							<c:if test="${movie.watched == 'yes' }">
								- ${movie.name} <br>
							</c:if>
						</c:if>
					</c:forEach>
				</td>
				
				<c:if test="${shelf.genre != 'Unknown'}">
					<td><a href="EditShelf?id=${shelf.ID}" class="link-danger">Edit</a></td>
					<td><a href="DeleteShelf?id=${shelf.ID}" class="link-danger">Delete</a></td>
					
				</c:if>
				
			</tr>
		</c:forEach>
	
	</table>
	</div>
	
		<p><a href="AddShelf" class="btn btn-danger border border-dark mt-3">Add Shelf</a></p>
	
	</div>
	

</body>
</html>