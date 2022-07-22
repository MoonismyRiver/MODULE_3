/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import common.ConnectDB;
import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Product;

/**
 *
 * @author TUNGDUONG
 */
public class ProductDAO {

    // get danh sách sản phẩm dựa vào mã danh mục
    public ArrayList<Product> getListProductByCategory(long category_id) throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM product WHERE category_id = '" + category_id + "'";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Product> list = new ArrayList<>();
        while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getInt("product_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setProductPrice(rs.getDouble("product_price"));
            product.setProductDescription(rs.getString("product_description"));
            list.add(product);
        }
        return list;
    }

    // hiển thị chi tiết sản phẩm
    public Product getProduct(long productID) throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM product WHERE product_id = '" + productID + "'";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        Product product = new Product();
        while (rs.next()) {
            product.setProductID(rs.getInt("product_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setProductPrice(rs.getDouble("product_price"));
            product.setProductDescription(rs.getString("product_description"));
        }
        return product;
    }

    //them san  pham
    public int addSanPham(Product sanpham) throws SQLException {
        Connection conn = null;
        PreparedStatement preparedSttm = null;
        try {
            conn = new ConnectDB().getConnect();
            String sSQLInsert = "INSERT INTO product(product_id, product_description, product_image, product_name,  product_price ) VALUES ( ?, ?, ?, ? ,?); ";
            preparedSttm = conn.prepareStatement(sSQLInsert);
            preparedSttm.setInt(1, sanpham.getProductID());
            preparedSttm.setString(2, sanpham.getProductDescription());
            preparedSttm.setString(3, sanpham.getProductImage());
            preparedSttm.setString(4, sanpham.getProductName());
            preparedSttm.setDouble(5, sanpham.getProductPrice());
//            preparedSttm.setLong(6, sanpham.getCategoryID().getCategoryID());
            if (preparedSttm.executeUpdate() == 1) {
                return 1;
            }
        } catch (Exception e) {
            System.err.println("Error:" + e.toString());

            return -1;
        }
        return -1;
    }

    public List<Product> getALLSanPham() throws SQLException {
        Connection conn = null;
        List<Product> listsp = new ArrayList<>();
        ConnectDB cn = new ConnectDB();
        conn = cn.getConnect();
        try {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM product");
            while (rs.next()) {
                Product book = new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDouble(5));
                listsp.add(book);
            }
        } catch (Exception e) {
            System.out.println("Error:" + e.toString());
            System.out.println("11111");
        }
        conn.close();
        return listsp;
    }
        public List<Product> getALLSanPhamid(String id) throws SQLException {
        Connection conn = null;
        List<Product> listsp = new ArrayList<>();
        ConnectDB cn = new ConnectDB();
        conn = cn.getConnect();
        try {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM product WHERE product.product_id ="+ id);
            while (rs.next()) {
                Product book = new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDouble(5));
                listsp.add(book);
            }
        } catch (Exception e) {
            System.out.println("Error:" + e.toString());
            System.out.println("11111");
        }
        conn.close();
        return listsp;
    }

    public Product getSanPhamByID(String productID) throws SQLException {
        Connection conn = null;
        Product sp = null;
        ConnectDB cn = new ConnectDB();
        conn = cn.getConnect();
        try {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM product WHERE product.product_id ="+ productID);
            while (rs.next()) {
                sp = new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDouble(5));
            }
        } catch (Exception e) {
            System.out.println("---getSanPhamByID----");
            System.out.println("Error getSanPhamByID:" + e.toString());
        }
        conn.close();
        return sp;
    }

    public Product getSanPhamByname(String name) throws SQLException {
        Connection conn = null;
        Product sp = null;
        ConnectDB cn = new ConnectDB();
        conn = cn.getConnect();
        try {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT");
            while (rs.next()) {
               sp = new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDouble(5));
            }
        } catch (Exception e) {
            System.out.println("---getSanPhamByID----");
            System.out.println("Error getSanPhamByID:" + e.toString());
        }
        conn.close();
        return sp;
    }

    public int updateSanpham(Product sanpham) throws SQLException {
        Connection conn = null;
        PreparedStatement preparedSttm = null;
        try {
            conn = new ConnectDB().getConnect();
            String sSQLInsert = "UPDATE  product SET product_description=?, product_image=?, product_name=?, product_price=? where product_id = ? ";
            preparedSttm = conn.prepareStatement(sSQLInsert);
            preparedSttm.setString(1, sanpham.getProductDescription());
            preparedSttm.setString(2, sanpham.getProductImage());
            preparedSttm.setString(3, sanpham.getProductName());
            preparedSttm.setDouble(4, sanpham.getProductPrice());
//            preparedSttm.setLong(5, sanpham.getCategoryID().getCategoryID());
            preparedSttm.setInt(5, sanpham.getProductID());
            if (preparedSttm.executeUpdate() == 1) {
                return 1;
            }
        } catch (Exception a) {
            System.out.println("Error:" + a.toString());
            return -1;

        }
        return -1;
    }
 public  Product getSanPhamDelete(String id) throws SQLException{
        Connection conn = null;
        Product sp = null;
        ConnectDB cn = new ConnectDB();
        conn = cn.getConnect();
        try{
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("DELETE from product where product.product_id="+id);
        
        }catch(Exception e){
            System.out.println("---getSanPhamByID--1--");
//            System.out.println("Error getSanPhamByID:"+e.toString());
        }
        conn.close();
        return sp;
    }
    public static void main(String[] args) throws SQLException {
        ProductDAO dao = new ProductDAO();
//        for (Product p : dao.getListProductByCategory(3)) {
//            System.out.println(p.getProductID() + " - " + p.getProductName());
//        }
        System.out.println(dao.getProduct(3).getProductName());
    }

}
