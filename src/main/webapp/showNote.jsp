<%@ page language="java" import="java.util.List,com.entities.Note"%>
 
	<h1>Showing your  Notes</h1>
	<ul>
		<%
		List<Note> myList = (List<Note>) request.getAttribute("list");
		if (myList != null) {
			for (Note item : myList) {
		%>


		<div class="card">
			<h2 class="title"><%=item.getTitle()%></h2>
			<p class="description"><%=item.getContent()%></p>
			<div class="buttons">
				<a href="Update?id=<%=item.getId()%>"><button class="update-btn">Update</button></a> 
				<a href="Delete?id=<%=item.getId() %>"><button class="delete-btn">Delete</button></a> 
			</div>
		</div>
		<%
		}
		}
		%>
	</ul>
	<br/>
	<h1> <a href="index.jsp" >Go to home page</a></h1>
 
