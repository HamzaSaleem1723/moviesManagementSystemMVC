<!DOCTYPE html>
<html>
    <head>
        <title>FILM WEB APPLICATION</title>
		<link rel="stylesheet" href="style/style1.css">
    </head>
	<form action="ControllerServlet" method="post">
		<h2>Insert Film Record<h2>
		<input type = "number" placeholder="Film ID" name = "filmid" required class = "input-box"/>
		<input type = "text" placeholder="Film Title" name = "filmtitle" required class = "input-box"/>
		<input type = "text" placeholder="Film Year" name = "filmyear" required class = "input-box"/></br>
		<input type = "text" placeholder="Film Director" name = "filmdir" required class = "input-box"/>
		<input type = "text" placeholder="Film Stars" name = "filmstars" required class = "input-box"/>
		<input type = "text" placeholder="Film Review" name = "filmrev" required class = "input-box"/></br>
		<button type="submit" name = "action" value="Inserted"class = "btn">Insert</button>
	</form>
    </body>
</html>