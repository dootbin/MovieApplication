<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="description" content="This is an error page.">
  <%@ include file="includes/styles.jsp" %>
  <title>Java Web Programming: Error</title>
</head>
<body>
    <div class="container">
    <div class="hero-unit">
      <h1>Movie Application - ERROR</h1>
    </div>
    <%@ include file="includes/nav.jsp" %>
    <div class="container">
      <p>
        <h1>Java Error</h1>
        <c:choose>
        		<c:when test="${message != null}">
        			<p>${message}</p>
        		</c:when>
        		<c:otherwise>
		        <h1>Java Error</h1>
		        Sorry, Java Has Thrown an exception <br>
		        to continue, click the back button.
		        <h2>Details</h2>
		        Type: ${pageContext.exception["class"]}<br>
		        Message: ${pageContext.exception.message}        			
        		</c:otherwise>
        	</c:choose>
    </div>
  <%@ include file="includes/footer.jsp" %>
  </div>
  <%@ include file="includes/scripts.jsp" %>
</body>
</html>
