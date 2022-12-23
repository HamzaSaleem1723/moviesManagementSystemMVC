<!DOCTYPE html>
<html>
    <head>
        <title>FILM WEB APPLICATION</title>
		<link rel="stylesheet" href="style/style1.css">
    </head>
	<form action="ControllerServlet" method="post">
		<h2>Enter Id of Film Record you want to Delete<h2>
		<input type = "number" placeholder="Film ID to Delete" name = "filmid" required class = "input-box"/></br>
		<button type="submit" name = "action" value="DeletedFilm" class = "btn">Delete</button>
	</form>
    </body>
</html>