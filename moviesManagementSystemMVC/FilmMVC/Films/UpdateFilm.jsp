<!DOCTYPE html>
<html>
    <head>
        <title>FILM WEB APPLICATION</title>
		<link rel="stylesheet" href="style/style1.css">
    </head>
	<form action="ControllerServlet" method="post">
		<h2>Update Film Record<h2>
		<input type = "number" placeholder="Film ID to Update" name = "id" required class = "input-box"/></br>
		<input type = "number" placeholder="New Film ID" name = "filmid" required class = "input-box"/>
		<input type = "text" placeholder="Updated Film Title" name = "filmtitle" required class = "input-box"/>
		<input type = "text" placeholder="Updated Film Year" name = "filmyear" required class = "input-box"/></br>
		<input type = "text" placeholder="Updated Film Director" name = "filmdir" required class = "input-box"/>
		<input type = "text" placeholder="Updated Film Stars" name = "filmstars" required class = "input-box"/>
		<input type = "text" placeholder="Updated Film Review" name = "filmrev" required class = "input-box"/></br>
		<button type="submit" name = "action" value="Updated" class = "btn">Update</button>
	</form>
    </body>
</html>