<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Shelf</title>
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
	    <li class="breadcrumb-item active" aria-current="page">Add Movie</li>
	  </ol>
	</nav>
</div>

	<form method="post">
	<div class="row justify-content-md-center p-3">
		<table class="table table-bordered border-dark border border-2" style="width:50%">
			<tr>
				<th class="text-uppercase">Genre</th>
				<td><input class="bg-light bg-opacity-30 border border-danger" type="text" name="genre"></td>
			</tr>

		</table>
			
		</div>
			<button class="btn btn-danger border border-dark mt-3">Add</button>
		
	</form>
	
	<p><a href="Shelves" class="btn btn-danger border border-dark mt-3">Cancel</a></p>
	</div>

</body>
</html>