<!DOCTYPE html>
<html>
    <head>
        <title>FILM WEB APPLICATION</title>
		<link rel="stylesheet" href="style/style1.css">
    </head>
	<form action="ControllerServlet" method="post">
		<h2>Search Film<h2>
		<input type = "text" placeholder="Search Film by String" name = "string" required class = "input-box"/></br>
		<button type="submit" name = "action" value="SearchedFilm" class = "btn">Search</button>
	</form>
    </body>
</html>