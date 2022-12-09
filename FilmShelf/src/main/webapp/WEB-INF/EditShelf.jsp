<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Shelf</title>
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
	    <li class="breadcrumb-item active" aria-current="page">Edit Genre</li>
	  </ol>
	</nav>
</div>

	
	<form method="post">
	<div class="row justify-content-md-center p-3">
		<table class="table table-bordered border-dark border border-2" style="width:50%">
			<tr>
				<th class="text-uppercase">Genre</th>
				<td><input type="text" name="genre" value="${entry.genre}"></td>
			</tr>
			<tr>
				<td colspan="2">
					<ul>
						<c:forEach items="${movies}" var="movie">
							<c:if test="${movie.genre == entry.genre}">
								<li>${movie.name}<button name="action" class="btn btn-outline-danger border border-danger btn-sm ms-3" value="${movie.ID}">[Remove]</button></li>
							</c:if>
						</c:forEach>
					</ul>
				</td>
			</tr>
			<tr>
				<td colspan="2"><button class="btn btn-danger border border-dark mt-3" name="action" value="Edit">Save</button></td>
			</tr>
		</table>
		</div>
	</form>
		
	</div>

</body>
</html>