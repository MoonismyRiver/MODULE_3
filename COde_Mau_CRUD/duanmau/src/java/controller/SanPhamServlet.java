/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Product;




/**
 *
 * @author PC
 */
public class SanPhamServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   
    ProductDAO spDao = new ProductDAO();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
          String id = request.getParameter("productID");
          String mota = request.getParameter("productDescription");
          String hinhanh = request.getParameter("productImage");
          String tensanpham = request.getParameter("productName");
          String giaban = request.getParameter("productPrice");
      
          String action = request.getParameter("action");
          if(id == null){
              request.setAttribute("LIST_SANPHAM", spDao.getALLSanPham());              
              request.getRequestDispatcher("sanpham.jsp").forward(request, response);
              return;
          }
          switch(action){
              case "add":
                 
                  Product sp = new Product(Integer.parseInt(id), mota, hinhanh, tensanpham, Double.parseDouble(giaban));
                  spDao.addSanPham(sp);      
                  request.setAttribute("LIST_SANPHAM", spDao.getALLSanPham());
                  System.out.println("LIST_SANPHAM:" + spDao.getALLSanPham().size());
                  request.getRequestDispatcher("sanpham.jsp").forward(request, response);
                  break;
              case "edit":
               
                 request.setAttribute("SANPHAM", spDao.getSanPhamByID(id));
                 request.setAttribute("SANPHAM_ID", spDao.getSanPhamByID(id).getProductID());
                 request.setAttribute("LIST_SANPHAM", spDao.getALLSanPham());
                 request.getRequestDispatcher("sanpham.jsp").forward(request, response);
                 break;
               case "search":
                 List<Product> list = spDao.getALLSanPhamid(id);
                 request.setAttribute("LIST_SANPHAM", list);
                 request.setAttribute("SANPHAM", spDao.getSanPhamByID(id));
                 request.getRequestDispatcher("sanpham.jsp").forward(request, response);
                 break;

              case "update":   
                  
                  sp = new Product(Integer.parseInt(id), mota, hinhanh, tensanpham, Double.parseDouble(giaban));
                 spDao.updateSanpham(sp);
                 request.setAttribute("LIST_SANPHAM", spDao.getALLSanPham());
                 System.out.println("LIST_SANPHAM:" + spDao.getALLSanPham().size());
                 request.getRequestDispatcher("sanpham.jsp").forward(request, response);
                 break;
              case  "delete":
                 
                   request.setAttribute("LIST_SANPHAM", spDao.getSanPhamDelete(id));
                   request.setAttribute("LIST_SANPHAM", spDao.getALLSanPham());
                  request.getRequestDispatcher("sanpham.jsp").forward(request, response);
                 break;
                
          }
        }
    }
    
    


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(SanPhamServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(SanPhamServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(SanPhamServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(SanPhamServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>





}
