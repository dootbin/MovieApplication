<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="description" content="This is a JSP example for a simple search page.">
  <%@ include file="includes/styles.jsp" %>
  <title>Java Web Programming: Movie Search</title>
</head>
<body>
    <div class="container">
    <div class="hero-unit">
      <h1>Search Movies</h1>
    </div>
	<%@ include file="includes/nav.jsp" %>
    <div class="container">
     
     	<form action="Search" method="post">
     		<label for="title"><strong>Search by title: </strong></label>
     		<input name="title">
     		<input type="submit" value="Search!">
     	</form>
     
    </div>
  <%@ include file="includes/footer.jsp" %>
  </div>
  <%@ include file="includes/scripts.jsp" %>
</body>
</html>
