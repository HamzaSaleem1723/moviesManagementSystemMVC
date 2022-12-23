<!DOCTYPE html>
<html>
    <head>
        <title>FILM WEB APPLICATION</title>
		<link rel="stylesheet" href="style/style1.css">
    </head>
	<form action="ControllerServlet" method="post">
		<h2>Enter Id of Film you want to view<h2>
		<input type = "number" placeholder="Film ID" name = "filmid" required class = "input-box"/></br></br>
		<button type="submit" name = "action" value="ViewFilm" class = "btn">Submit</button>
	</form>
    </body>
</html>