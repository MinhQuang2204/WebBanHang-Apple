package Control;

import DAO.LoginDAO;
import Model.MD5;
import Model.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Servlet implementation class LoginControl
 */
@WebServlet("/admin/loginad")
public class LoginControlAd extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginControlAd() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        HttpSession session = request.getSession();
        if (session.getAttribute("acc") != null) {
            response.sendRedirect("http://localhost:8080/Apple_store");
        } else {
            request.getRequestDispatcher("/admin/loginad.jsp").forward(request, response);
        }
        //request.getRequestDispatcher("/shop/login.jsp").forward(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        MD5 lib = new MD5();
        String passMD5 = lib.md5(password);

        LoginDAO dao = new LoginDAO();
        Users a = dao.login(username, passMD5);
        if (a == null) {
            request.setAttribute("mess", "Sai tên đăng nhập hoặc mật khẩu");
            request.getRequestDispatcher("/admin/loginad.jsp").forward(request, response);
        } else {
            HttpSession session = request.getSession();
            int user = a.getIsUser();
            int admin = a.getIsAdmin();
            int shipper = a.getIsShiper();
            if (user == 1 && admin == 1 && shipper == 0) {
                session.setAttribute("accad", a);
                response.sendRedirect("http://localhost:8080/Apple_store/admin");
            } else {
                request.setAttribute("mess", "Bạn phải là Admin");
                request.getRequestDispatcher("/admin/loginad.jsp").forward(request, response);
            }
            //response.sendRedirect("http://localhost:8080/Apple_store");
        }
    }

}