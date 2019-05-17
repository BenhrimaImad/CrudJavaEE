<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Post</title>

<link rel="stylesheet" href="css/bootstrap.css" media="screen">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/usebootstrap.css">
<script src="js/respond.min.js"></script>
<script src="js/html5shiv.js"></script>

</head>
<body>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor02">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Features</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Pricing</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">About</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="text" placeholder="Search">
      <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>


<h1>All Post :</h1>
	<div style="width: 1200px;margin-left: auto;margin-right: auto">
	<table cellpadding="10">
	<tr class="table-primary">
	<th>ID</th>
	<th>Title</th>
	<th>Description</th>
	<th>Detail</th>
	<th>Category</th>
	<th>Date</th>
	<th>Image</th>
	</tr>
	<c:forEach items="${AllPost}" var="p">
	<tr class="table-secondary">
		<td>${p.id}</td>
		<td>${p.title}</td>
		<td>${p.description}</td>
		<td>${p.detail}</td>
		<td>${p.category}</td>
		<td>${p.date}</td>
		<td>${p.image}</td>
		<td>
		</td>
	</tr>
	</c:forEach>
	
	</table>
	<br>
	
	<a class="btn btn-success" href="http://localhost:8080/MiniProjectCrud/test.html" role="button">Edit Post  &nbsp; <img height="30px" width="30px" src="img/edit.png"></img></a>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a class="btn btn-danger" href="http://localhost:8080/MiniProjectCrud/Delete.html" role="button">Delete Post  &nbsp; <img height="30px" width="30px" src="img/delete.png"></img></a>
	
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
<script src="js/usebootstrap.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	
</body>
</html>