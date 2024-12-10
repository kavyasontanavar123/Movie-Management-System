package com.jsp.servlet.moviedb;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/update-movie")
public class UpdateMovieServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Extract the id sent from
		int movieId = Integer.parseInt(req.getParameter("movieId"));
		Connection conn = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet_moviedb?user=root&password=root");
			PreparedStatement pst = conn.prepareStatement("SELECT * FROM movie WHERE movieId=?");
			pst.setInt(1, movieId);
			ResultSet rs = pst.executeQuery();
			req.setAttribute("movie", rs);
			RequestDispatcher rd = req.getRequestDispatcher("UpdateMovie.jsp");
			rd.forward(req, resp);

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
