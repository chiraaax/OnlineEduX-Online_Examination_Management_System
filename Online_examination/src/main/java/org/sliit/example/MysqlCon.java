package org.sliit.example;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

// Servlet definition using annotation
@WebServlet("/mysqlcon")
public class MysqlCon extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Set response content type
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // JDBC logic to connect to MySQL
        try {
        	Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexam", "root", "root");
            Statement st = con.createStatement();
            String query = "select * from login";
            ResultSet rs = st.executeQuery(query);

            // Display the result set in HTML format
            out.println("<html><body>");
            out.println("<h2>Login Data:</h2>");
            while (rs.next()) {
                out.println("<p>" + rs.getString(1) + " " + rs.getString(2) + "</p>");
            }
            out.println("</body></html>");

            con.close();
        } catch (SQLException e) {
            out.println("<p>Error connecting to database</p>");
            e.printStackTrace(out);
        } catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
}
