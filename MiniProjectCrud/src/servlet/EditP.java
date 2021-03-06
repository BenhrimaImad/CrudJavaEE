package servlet;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.DataAccess;


/**
 * Servlet implementation class EditP
 */
@WebServlet("/EditP")
public class EditP extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditP() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		 String idTmp = request.getParameter("id");
		 int id = Integer.parseInt(idTmp); 
		 String title = request.getParameter("title");
		
		 String description = request.getParameter("description");
		 String detail = request.getParameter("details");
		 String category = request.getParameter("category");
		 String image = request.getParameter("image");
		 
		 
		 DataAccess da = new DataAccess();
		 da.edit(id,title,description,detail,category,image);
	
	request.setAttribute("AllPost", DataAccess.getAll());
	RequestDispatcher rd = request.getRequestDispatcher("/jsp/AllPost.jsp");
	rd.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
