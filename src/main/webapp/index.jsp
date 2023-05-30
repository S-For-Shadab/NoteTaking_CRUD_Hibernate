<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@include file="CommonCssJavascript.jsp" %>
    <title>Bootstrap demo</title>
     </head>
  <body>
     <div class="container-fluid p-0 m-0">
     	<%@include file="Navbar.jsp" %>
     </div>
     <h1><%
     String msg=request.getParameter("msg");
      if(msg!=null){
    	  out.println(msg);
      }
     
     %></h1>
         <h1>Welcome to the Note Taking App</h1>
  </header>
  <main>
    <div class="container">
      <h2>Get Started</h2>
      <p>Create, organize, and manage your notes effortlessly.</p>
      <a href="addNote.jsp" class="start-btn">Start Taking Notes</a>
    </div>
  </main>
   
     
      </body>
</html>