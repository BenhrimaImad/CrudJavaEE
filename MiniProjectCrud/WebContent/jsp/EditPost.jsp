<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Post</title>
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




<h1>Edit Post :</h1>
	<div style="width: 900px;margin-left: auto;margin-right: auto">
	 <form action="controler.ai" method="post">
	<c:forEach items="${getNewById}" var="p">
	
	ID :<br>
	<input type="text" name="id" value="${p.id}" style="width: 200px" readonly="readonly"> <br>
	Title :<br>
	<input type="text" name="title" value="${p.title }" style="width: 200px"><br>
	Description :<br>
	<input type="text" name="description" value="${p.description }" style="width: 200px"><br>
	Details :<br>
	<textarea  name="details" style="width: 400px; height: 200px">${p.detail }</textarea><br>
	Category : <br>
	<select name="category">
	<option value="${p.category }">${p.category }</option>
	 	<option value="world">World</option>
	 	<option value="tech">Tech</option>
	 	<option value="sport">Sport</option>
	</select><br>
	Image :<br>
	<input type="text" name="image" value="${p.image }" style="width: 200px"><br>
	<br>
	<input type="submit" value="Edit Post" class="btn btn-warning">
	
	
	 
	</c:forEach>
	
	 </form>
	 </div>
	 
	 
	 
	 
	 
	 
	 
	 
	 	
<script src="js/usebootstrap.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
</body>
</html>