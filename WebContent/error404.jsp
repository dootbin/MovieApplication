<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="description" content="This is a JSP page that is displayed when a page is not found in the Movie Application">
  <%@ include file="includes/styles.jsp" %>
  <title>Movie Application: 404</title>
</head>
<body>
  <div>
    <div class="container">
    <div class="hero-unit">
      <h1>Error 404</h1>
    </div>
    <%@ include file="includes/nav.jsp" %>
    <div class="container">
      <p>
        <h1>404 Error :[</h1>
      </p>
    </div>
    <hr>
  <%@ include file="includes/footer.jsp" %>
  </div>
  <%@ include file="includes/scripts.jsp" %>
  </div>
</body>
</html>
