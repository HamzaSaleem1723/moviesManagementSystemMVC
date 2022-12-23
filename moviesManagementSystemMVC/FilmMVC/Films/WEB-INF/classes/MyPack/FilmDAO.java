package MyPack;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.*;
import java.util.Collection;


public class FilmDAO {

    Film oneFilm = null;
    Connection conn = null;
    Statement stmt = null;
    String user = "root";
    String password = "root";
   
    String url = "jdbc:mysql://127.0.0.1/films";

    public FilmDAO() {}


    private void openConnection(){
        // loading jdbc driver for mysql
        try{
            Class.forName("com.mysql.jdbc.Driver");
        } catch(Exception e) { System.out.println(e); }

        // connecting to database
        try{
            // connection string for demos database, username demos, password demos
            conn = DriverManager.getConnection(url, user, password);
            stmt = conn.createStatement();
        } catch(SQLException se) { System.out.println(se); }
    }
    private void closeConnection(){
        try {
            conn.close();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    private Film getNextFilm(ResultSet rs){
        Film thisFilm=null;
        try {
            thisFilm = new Film(
                    rs.getInt("id"),
                    rs.getString("title"),
                    rs.getInt("year"),
                    rs.getString("director"),
                    rs.getString("stars"),
                    rs.getString("review"));
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return thisFilm;
    }



    //function to get all films from database and return in form of arraylist
    public ArrayList<Film> getAllFilms(){

        ArrayList<Film> allFilms = new ArrayList<Film>();
        openConnection();

        // Create select statement and execute it
        try{
            String selectSQL = "select * from films";
            ResultSet rs1 = stmt.executeQuery(selectSQL);
            // Retrieve the results
            while(rs1.next()){
                oneFilm = getNextFilm(rs1);
                allFilms.add(oneFilm);
            }

            stmt.close();
            closeConnection();
        } catch(SQLException se) { System.out.println(se); }

        return allFilms;
    }

	
    //function to get film by id from database and return in form of film function
    public Film getFilmByID(int id){

        openConnection();
        oneFilm=null;
        // Create select statement and execute it
        try{
            String selectSQL = "select * from films where id="+id;
            ResultSet rs1 = stmt.executeQuery(selectSQL);
            // Retrieve the results
            while(rs1.next()){
                oneFilm = getNextFilm(rs1);
            }

            stmt.close();
            closeConnection();
        } catch(SQLException se) { System.out.println(se); }

        return oneFilm;
    }

    //function to insert film in database
    public void insertFilm (Film f){
		openConnection();
        int id = f.id;
        String title = f.title;
        int year = f.year;
        String director = f.director;
        String stars = f.stars;
        String review = f.review;
		System.out.println(id);
		
		try {
			//insert one film using prepared query
			String query = "INSERT INTO films (id,title,year,director,stars,review) VALUES(?,?,?,?,?,?)";
            PreparedStatement pst = conn.prepareStatement(query);
			pst.setInt(1,id);
			pst.setString(2,title);
			pst.setInt(3,year);
			pst.setString(4,director);
			pst.setString(5,stars);
			pst.setString(6,review);
			int result = pst.executeUpdate();
			if(result == 1)
				System.out.println("Good");
            stmt.close();
            closeConnection();
        } catch(SQLException se) { System.out.println(se); }
    }

   // function to update record using oldid
    public void updateFilm (Film f, int oldid){
		openConnection();
        int id = f.id;
        String title = f.title;
        int year = f.year;
        String director = f.director;
        String stars = f.stars;
        String review = f.review;
	//update one record
        String query = "UPDATE films SET id = '"+id+"' , title = '"+title+"', year = '"+year+"', director = '"+director+"', stars = '"+stars+"', review = '"+review+"' 	WHERE id = '"+oldid+"' ";
        try {
            stmt.executeUpdate(query);
            stmt.close();
            closeConnection();
        } catch(SQLException se) { System.out.println(se); }
    }

    //function to delete film to from database
    public void deleteFilm(int id){
		openConnection();
	//delete record
        String query = "DELETE FROM films WHERE id = '"+id+"' ";
        try {
            stmt.executeUpdate(query);
            stmt.close();
            closeConnection();
        } catch(SQLException se) { System.out.println(se); }
    }

    //function to search record using string
    public Collection searchFilms(String searchStr){
        ArrayList<Film> FilmList = new ArrayList<>();
		openConnection();
	//search record using either string from title or direction or stars
        String query = "SELECT * FROM films WHERE title LIKE ? OR director LIKE ? OR stars LIKE ?";
        try{
        PreparedStatement pst = conn.prepareStatement(query);
        String C = "%" + searchStr + "%";
        pst.setString(1,C);
        pst.setString(2,C);
        pst.setString(3,C);
        ResultSet rs = pst.executeQuery();
        int id;
        String title;
        int year;
        String director;
        String stars;
        String review;
        while (rs.next()){
            id = rs.getInt(1);
            title = rs.getString(2);
            year = rs.getInt(3);
            director = rs.getString(4);
            stars = rs.getString(5);
            review = rs.getString(6);
            Film filmbean = new Film();
            filmbean.setId(id);
            filmbean.setTitle(title);
            filmbean.setYear(year);
            filmbean.setDirector(director);
            filmbean.setStars(stars);
            filmbean.setReview(review);

            FilmList.add(filmbean);
        }
            stmt.close();
            closeConnection();
        } catch(SQLException se) { System.out.println(se); }
        return FilmList;
    }
}
