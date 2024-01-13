<%@ include  file="Featch.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- Button that redirects to Index.jsp -->
<br>
<button onclick="redirectToIndex()">Go to Home Page</button>

<script>
    function redirectToIndex() {
       
        window.location.href ='Index.jsp' ;
    }
</script>

</body>
</html>