<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="description" content="This is a success page.">
  <%@ include file="includes/styles.jsp" %>
  <title>Java Web Programming: Success</title>
</head>
<body>
    <div class="container">
    <div class="hero-unit">
      <h1>Movie Application - Success</h1>
    </div>
    <%@ include file="includes/nav.jsp" %>
    <div class="container">
      <p>
        <h1>Java Success</h1>
	    <p>${message}</p>
    </div>
  <%@ include file="includes/footer.jsp" %>
  </div>
  <%@ include file="includes/scripts.jsp" %>
</body>
</html>
