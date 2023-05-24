/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.*;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.sql.*;

import com.mysql.cj.protocol.Resultset;
import com.mysql.cj.xdevapi.DbDoc;
import bean.dbConnect;
import javax.servlet.annotation.MultipartConfig;
/**
 *
 * @author nurau
 */
@MultipartConfig(maxFileSize=16177215)
public class CatPackage extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    public CatPackage(){
        super();
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        response.setContentType("image/jpeg");
        int Id = Integer.parseInt(request.getParameter("Id"));
       Connection conn = dbConnect.getConnection();
       String sql = "select * from pack where Id ='"+Id+"'";
       PreparedStatement ps;
       try{
           ps = conn.prepareStatement(sql);
           ResultSet rs = ps.executeQuery();
           if(rs.next()){
               byte [] imageData = rs.getBytes("pic");
               OutputStream os = response.getOutputStream();
               os.write(imageData);
               os.flush();
               os.close();
           }
       }catch (SQLException e){
           e.printStackTrace();
           response.getOutputStream().flush();
           response.getOutputStream().close();
       }
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
            /* TODO output your page here. You may use following sample code. */
         String packname = request.getParameter("packname");
         String info = request.getParameter("info");
         String price = request.getParameter("price");
         InputStream inputStream = null;
         Part part = request.getPart("gambar");
         if(part!=null){
             System.out.println(part.getName());
             System.out.println(part.getSize());
             System.out.println(part.getContentType());
             inputStream = part.getInputStream();
         }
         Connection conn = dbConnect.getConnection();
         String sql = "insert into pack (packname, info, pic, price) values (?, ?, ?, ?)";
         
         try{
             
           PreparedStatement ps = conn.prepareStatement(sql);
           ps.setString(1, packname);
           ps.setString(2, info);
           ps.setString(3, price);
           ps.setBlob(4, inputStream);
          
           int i=ps.executeUpdate();
           
            if(i>0){
                RequestDispatcher rs = request.getRequestDispatcher("read.jsp");
                rs.forward(request, response);
            }
            
        }
        catch(Exception e)
        {
        e.printStackTrace();
        }
    }
}