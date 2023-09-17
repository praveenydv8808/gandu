<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <title>TodoList Page</title>
</head>
<body>
    <div class="container">
        <h1>Update Todo Details</h1>
        
        <form:form method="post" modelAttribute="todo">
        	Description:<form:input type="text" name="description" path="discription" placeholder="Enter a description" required="required" />
        	<form:errors path="discription" cssClass="text-warning" />
        	<form:input type="hidden" name="id" path="id" />
        	<form:input type="hidden" name="done" path="done" />
        	<input type="submit" class="btn btn-success">
        </form:form>
        
       
    </div>
    <script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js" ></script>
    <script src="webjars/jquery/3.6.0/jquery.min.js" ></script>
</body>
</html>
