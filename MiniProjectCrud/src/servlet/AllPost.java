package servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.DataAccess;
import model.News;

/**
 * Servlet implementation class AllPost
 */
@WebServlet("/AllPost")
public class AllPost extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AllPost() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		   String title = request.getParameter("title");
			 Date dateTemp = new Date(System.currentTimeMillis());
			 SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
			 String date = dateFormat.format(dateTemp.getTime());
			 
			 
			 String description = request.getParameter("description");
			 String detail = request.getParameter("details");
			 String category = request.getParameter("category");
			 String image = request.getParameter("image");
			 
			 News n = new News(0,title,date,description,detail,category,image);
			 DataAccess da = new DataAccess();
			 da.addNew(n);
		
		request.setAttribute("AllPost", DataAccess.getAll());
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/AllPost.jsp");
		rd.forward(request, response);
		
	}

}
