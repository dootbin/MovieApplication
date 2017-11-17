<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="description" content="This is a servlet example that demonstrates how to us IO to
    output the contents of an Excel spreadsheet to a web page.">
  <%@ include file="includes/styles.jsp" %>
  <title>Java Web Programming: Error</title>
</head>
<body>
  <div id="wrapper">
    <div class="container">
    <div class="hero-unit">
      <h1>Welcome to Java Web Programming ERROR</h1>
    </div>
    <%@ include file="includes/nav.jsp" %>
    <div class="container">
      <p>
        <h1>Java Error</h1>
        Sorry, Java Has Thrown an exception <br>
        to continue, click the back button.
        <h2>Details</h2>
        Type: ${pageContext.exception["class"]}<br>
        Message: ${pageContext.exception.message}
      </p>
    </div>
  <%@ include file="includes/footer.jsp" %>
  </div>
  <%@ include file="includes/scripts.jsp" %>
  </div>
</body>
</html>
