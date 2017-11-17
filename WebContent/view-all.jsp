<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="description" content="This is a JSP example that demonstrates how to output every movie in our excel spreadsheet to a web page">
  <%@ include file="includes/styles.jsp" %>
  <title>Java Web Programming: Movie List</title>
</head>
<body>
  <div id="wrapper">
    <div class="container">
    <div class="hero-unit">
      <h1>View All Movies</h1>
    </div>
      <%@ include file="includes/nav.jsp" %>
    <div class="container">
      <c:choose>

        <c:when test="${empty movies}">

          <p>Sorry, the list of Movies is empty</p>

        </c:when>
        <c:otherwise>

          <c:forEach var='movie' items="${movies}">

            <div class="span10 movieElement">

                <h2>${movie.title}</h2>
                <img src="${movie.imgURL}" alt="${movie.title} image">
				<h2>Director: ${movie.director}</h2>
				<p><em>Description:</em> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Curabitur blandit tempus porttitor. 
									    Lorem ipsum dolor sit amet, consectetur adipiscing elit.

										Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. 
										Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Maecenas sed diam eget risus varius blandit 
										sit amet non magna. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.
				</p>
				<h3>Length: ${movie.lengthInMinutes }</h3>
            </div>

          </c:forEach>

        </c:otherwise>
      </c:choose>
    </div>
  <%@ include file="includes/footer.jsp" %>
  </div>
  <%@ include file="includes/scripts.jsp" %>
  </div>
</body>
</html>
