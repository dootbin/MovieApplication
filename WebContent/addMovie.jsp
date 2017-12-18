<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="description" content="This is a jsp page to add a new Movie to the database">
  <%@ include file="includes/styles.jsp" %>
  <title>Java Web Programming: Movie Search - Add New Person</title>
</head>
<body>
    <div class="container">
    <div class="hero-unit">
      <h1>Add New Movie</h1>
    </div>
	<%@ include file="includes/nav.jsp" %>
    <div class="container">
     
		<form action="AddMovie" method="post">
		  <table>
		    <tr>
		      <td><label for="title"><strong>Title: </strong></label></td>
		      <td><input name="title"></td>
		    </tr>
		    <tr>
		      <td><label for="director"><strong>Director: </strong></label></td>
		      <td><input name="director"></td>
		    </tr>
		    <tr>
		      <td><label for="lengthInMinutes"><strong>Length In Minutes: </strong></label></td>
		      <td><input name="lengthInMinutes"></td>
		    </tr>
		    <tr>
		      <td><label for="imgURL"><strong>Image URL(Not required): </strong></label></td>
		      <td><input name="imgURL"></td>
		    </tr>
		  </table>
		  <input type="submit" value="Add Movie">
		</form>
		<p>${message}</p>
     
    </div>
  <%@ include file="includes/footer.jsp" %>
  </div>
  <%@ include file="includes/scripts.jsp" %>
</body>
</html>
