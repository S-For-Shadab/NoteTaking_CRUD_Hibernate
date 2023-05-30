<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import="com.entities.Note"%>
    <%
	Note note=(Note)request.getAttribute("note");
	String title=note.getTitle();
	String desc=note.getContent();

%>
 <div class="box"
> <h1>Update your values</h1>
<br>
 
<div class="form-container m-2 p-2">
    <form action="UpdateInDb"  method="post">
      <div class="form-group">
        <label for="note-title">Title: <%= title%></label>
        <input type="text"  name="title" id="note-title" class="form-control" required  >
      </div>
      <input type="hidden"  name="id" value="<%= note.getId()%>">

      <div class="form-group">
        <label for="note-description">Description: <%=desc %></label>
        <textarea id="myTextarea" name="desc"  class="form-control" required    ></textarea>
      </div>

      <button type="submit" class="btn btn-primary">Update</button>
    </form>
  </div>

<h1> <a href="index.jsp" >Go to home page</a></h1>

</div>
 