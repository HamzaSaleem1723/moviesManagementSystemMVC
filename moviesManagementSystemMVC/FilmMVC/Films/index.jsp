<!DOCTYPE html>
<html>
    <head>
        <title>FILM WEB APPLICATION</title>
		<link rel="stylesheet" href="style/style1.css">
    </head>
    <body style="margin: 0px;">
        <div class="container">
            <div class = "buttons">
                <h1>Film Web Application</h1><br><br>
				<form action="ControllerServlet" method="post">
                <button type="submit" name = "action" value="ViewAllFilms" class = "btn" >View All Films</button>
				<button type="submit" name = "action" value="ViewFilmById" class = "btn">View Film By Id</button>
				<button type="submit" name = "action" value="InsertFilm" class = "btn">Insert New Film</button>
				<button type="submit" name = "action" value="UpdateFilm" class = "btn">Update Film</button>
				<button type="submit" name = "action" value="DeleteFilm" class = "btn">Delete Film</button>
				<button type="submit" name = "action" value="SearchFilm" class = "btn">Search Film</button>
				</form>
            </div>
        </div>
    </body>
</html>