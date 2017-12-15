<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="description" content="This is a jsp to populate the database.">
  <%@ include file="includes/styles.jsp" %>
  <title>Java Web Programming: Populate Database</title>
</head>
<body>
    <div class="container">
    <div class="hero-unit">
      <h1>Populate Database</h1>
    </div>
	<%@ include file="includes/nav.jsp" %>
    <div class="container">
     
     	<form action="PopulateDatabase" method="post">
			<p>Click on the populate button to populate the movie database</p>
			<p>
				Warning: Submitting this form will reset the database and it will
				only contain those movies in the original spreadSheet!
			</p>
			<input type="submit" value="Populate!">
     	</form>
     
    </div>
  <%@ include file="includes/footer.jsp" %>
  </div>
  <%@ include file="includes/scripts.jsp" %>
</body>
</html>
