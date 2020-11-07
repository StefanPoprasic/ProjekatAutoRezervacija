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
import javax.servlet.http.HttpSession;

/**
 *
 * @author POPRASIC
 */
public class PotvrdiVreme extends HttpServlet {

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
            out.println("<title>Servlet PotvrdiVreme</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PotvrdiVreme at " + request.getContextPath() + "</h1>");
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
          HttpSession sesija=request.getSession();
        String datum=(String)request.getParameter("datum");
   String vreme=(String)request.getParameter("vreme");
      String idKorisnik=(String)request.getParameter("idKorisnik"); 
       String idAuto=(String)request.getParameter("idAuto"); 
       
       try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/autorezervacija", "root", "");
                Statement st=con.createStatement();
                st.executeUpdate("update korisnik set idKorisnik='"+idKorisnik+"',idAuto='"+idAuto+"'where idKorisnik='"+idKorisnik+"'");
                st.close();
                con.close();
                request.setAttribute("msq","Uspesno");
                
                
            }catch(ClassNotFoundException ex){}
            catch(SQLException sqle){
                String poruka=sqle.getMessage();
            }
        if(vreme!=null && vreme.length()>0 && datum!=null && datum.length()>0){
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/autorezervacija", "root", "");
                Statement st=con.createStatement();
                st.executeUpdate("insert into rezervacija(datum,vreme,idKorisnik) values('"+datum+"','"+vreme+"','"+idKorisnik+"');");
                st.close();
                con.close();
                
                request.setAttribute("msq","Dodavanje vremena je uspesno");
                sesija.setAttribute("poruka", idKorisnik);
                request.getRequestDispatcher("Potvrda").forward(request, response);
                
                
            }catch(ClassNotFoundException ex){}
            catch(SQLException sqle){
                String poruka=sqle.getMessage();
            }
        
        }
        else{
            request.setAttribute("Poruka","Morate da unesete datum i vreme!");
            request.getRequestDispatcher("IzabranModel.jsp").forward(request, response);
        }
        
           
        }
            
            
      
       
    }



