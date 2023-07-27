package Control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.BaiVietDAO;
import DAO.BannerDAO;
import DAO.LoaispDAO;
import DAO.SanPhamDAO;
import Model.BaiViet;
import Model.Banner;
import Model.LoaiSP;
import Model.SanPham;

/**
 * Servlet implementation class SearchControl
 */
@WebServlet(urlPatterns = {""})
public class ViewShop extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");


        String banner ;
        BannerDAO bannerDAO = new BannerDAO();
        Banner b = bannerDAO.getBannerNewBanner();
        if(b == null)
        {
            banner = ""; // mặt định
        }
        else {
            banner = b.getAnh();
        }

        LoaispDAO sanphamdao = new LoaispDAO();
        SanPhamDAO sanPhamDAO = new SanPhamDAO();
        List<SanPham> list = sanPhamDAO.newProduct();
        List<LoaiSP> listlsp = sanphamdao.getAllloaisp();
        BaiVietDAO baiVietDAO = new BaiVietDAO();

        List<BaiViet> listBaiViet = baiVietDAO.getAllBaiVietTop4();
        request.setAttribute("listBaiViet", listBaiViet);

        request.setAttribute("banner",banner);
        request.setAttribute("listNew", list);
        request.setAttribute("listlsp", listlsp);
        request.getRequestDispatcher("shop/index.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }
    /*
     * protected void doGet(HttpServletRequest request, HttpServletResponse
     * response) throws ServletException, IOException { // TODO Auto-generated
     * method stub
     * response.getWriter().append("Served at: ").append(request.getContextPath());
     * }
     */

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     *      response)
     *//*
     * protected void doPost(HttpServletRequest request, HttpServletResponse
     * response) throws ServletException, IOException { // TODO Auto-generated
     * method stub doGet(request, response); }
     */

}
