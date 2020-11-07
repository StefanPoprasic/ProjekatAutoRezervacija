/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author POPRASIC
 */
public class IzmenaMenadzer extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet IzmenaMenadzer</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet IzmenaMenadzer at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        processRequest(request, response);
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
                 String idAuto=(String)request.getParameter("idAuto");
        String marka=(String)request.getParameter("marka");
        String gorivo=(String)request.getParameter("gorivo");
        String karoserija=(String)request.getParameter("karoserija");
        String cena=(String)request.getParameter("cena");
        String serija=(String)request.getParameter("serija");
        
        if(idAuto!=null && idAuto.length()>0 && marka!=null && marka.length()>0 && gorivo!=null && gorivo.length()>0 && karoserija!=null && karoserija.length()>0 && cena!=null && cena.length()>0 && serija!=null && serija.length()>0  ){
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/autorezervacija","root","");
                Statement st=con.createStatement();
                st.executeUpdate("update automobil set idAuto='"+idAuto+"',marka='"+marka+"',gorivo='"+gorivo+"',karoserija='"+karoserija+"',cena='"+cena+"',serija='"+serija+"'where idAuto='"+idAuto+"'");
                            
                st.close();
                con.close();
                request.setAttribute("Poruka","Izmena automobila je uspesna");
                request.getRequestDispatcher("Menadzer").forward(request, response);
            }catch(ClassNotFoundException ex){
                
            }catch(SQLException sqle){
                String poruka=sqle.getMessage();
            }
        }else{
            request.setAttribute("msg","Morate uneti sva polja !");
                    request.getRequestDispatcher("Menadzer").forward(request, response);
        }
    }

    

}
