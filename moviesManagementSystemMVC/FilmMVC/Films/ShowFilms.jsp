<%@page import="java.util.*" %>
<%@page import="MyPack.*" %> 

<!DOCTYPE html>
<html>
    <head>
        <title>FILM WEB APPLICATION</title>
		<link rel="stylesheet" href="style/style1.css">
    </head>
	<body>
	<h2>All Films </h2></br></br> 
	<TABLE >
        
            <TR> 
            <TH> ID </TH> 
            <TH> TITLE </TH> 
            <TH> YEAR </TH> 
			<TH> DIRECTOR </TH> 
			<TH> STARS </TH> 
			<TH> REVIEW </TH> 
            </TR> 
        
            <% 
            ArrayList FilmList = (ArrayList)request.getAttribute("list"); 
            Film film = null; 
            
            for(int i=0; i<FilmList.size(); i++) { 
            film = (Film)FilmList.get(i); %> 
            
            
            <TR> <TD> <%= film.getId()%> </TD>
            <TD> <%= film.getTitle()%> </TD>
            <TD> <%= film.getYear()%> </TD> 
			<TD> <%= film.getDirector()%> </TD> 
			<TD> <%= film.getStars()%> </TD> 
			<TD> <%= film.getReview()%> </TD> 
            </TR> 
            
            <% 
            } 
            %> 

        </TABLE>
		</body></html>