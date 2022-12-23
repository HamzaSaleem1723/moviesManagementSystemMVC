<%@page import="java.util.*" %>
<%@page import="MyPack.*" %> 

<!DOCTYPE html>
<html>
    <head>
        <title>FILM WEB APPLICATION</title>
		<link rel="stylesheet" href="style/style1.css">
    </head>
	<body style="margin: 0px;">
	<h2>Film Record</h2> </br></br>
	<center>
	<TABLE> 
        
            <TR> 
            <TH> ID </TH> 
            <TH> TITLE </TH> 
            <TH> YEAR </TH> 
			<TH> DIRECTOR </TH> 
			<TH> STARS </TH> 
			<TH> REVIEW </TH> 
            </TR> 
        
            <% 
            
            Film film = (Film)request.getAttribute("film"); %>
            
           
            
            
            <TR> <TD> <%= film.getId()%> </TD>
            <TD> <%= film.getTitle()%> </TD>
            <TD> <%= film.getYear()%> </TD> 
			<TD> <%= film.getDirector()%> </TD> 
			<TD> <%= film.getStars()%> </TD> 
			<TD> <%= film.getReview()%> </TD> 
            </TR> 
            
        

        </TABLE>
		</center>
		</body></html>