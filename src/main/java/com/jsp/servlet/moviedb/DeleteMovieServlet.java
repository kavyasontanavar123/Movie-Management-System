package com.jsp.servlet.moviedb;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/delete-movie")
public class DeleteMovieServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int movieId = Integer.parseInt(req.getParameter("movieId"));
		
		//JDBC LOGIC - Delete the record from the movie table based on id
		Connection conn = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			conn = DriverManager.getConnection
					("jdbc:mysql://localhost:3306/servlet_moviedb?user=root&password=root");
			PreparedStatement pst = conn.prepareStatement("DELETE from movie WHERE movieId=?");
			pst.setInt(1, movieId);
			pst.executeUpdate();
			resp.sendRedirect("display-all-movies");
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

}
