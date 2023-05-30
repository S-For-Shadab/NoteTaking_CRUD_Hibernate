<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>add Note</title>
 <%@ include file="CommonCssJavascript.jsp" %>
</head>
<body>
<%@include file="Navbar.jsp" %>
<div class="box"> 
<h1>add Note here</h1>
<br>
<div class="form-container m-2 p-2">
    <form action="AddInNote"  method="post">
      <div class="form-group">
        <label for="note-title">Title:</label>
        <input type="text"  name="title" id="note-title" class="form-control" required>
      </div>

      <div class="form-group">
        <label for="note-description">Description:</label>
        <textarea id="note-description" name="desc"  class="form-control" required></textarea>
      </div>

      <button type="submit" class="btn btn-primary">Save Note</button>
    </form>
  </div>

<h1> <a href="index.jsp" >Go to home page</a></h1>
</div>
</body>
</html>