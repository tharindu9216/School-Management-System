package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.customer;
import services.customerService;


@WebServlet("/addCustomer")
public class addCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public addCustomer() {
        super();
        
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		customer cus = new customer();
		cus.setEmail(request.getParameter("email"));
		cus.setFull_name(request.getParameter("Fname"));
		cus.setAddress(request.getParameter("add"));
		cus.setCity(request.getParameter("city"));
		cus.setState(request.getParameter("state"));
		cus.setZip_code(request.getParameter("zip"));
		cus.setCredit_card_number(request.getParameter("credit"));
		cus.setExp_month(request.getParameter("expm"));
		cus.setCvv(request.getParameter("cvv"));
		cus.setAmount(request.getParameter("amount"));
		
		
		customerService service = new customerService();
		service.regCustomer(cus);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("Home.jsp");
		
		
		dispatcher.forward(request, response);
	}

}
