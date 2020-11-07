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
public class Registracija extends HttpServlet {

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
            out.println("<title>Servlet Registracija</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Registracija at " + request.getContextPath() + "</h1>");
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
          String ime=(String)request.getParameter("ime");
        String prezime=(String)request.getParameter("prezime");
        String telefon=(String)request.getParameter("telefon");
        String email=(String)request.getParameter("email");
        String password=(String)request.getParameter("password");
        int idAuto=8;
        int idRegistracija=3;
        int racun=0;
        if(email.isEmpty() || password.isEmpty() || ime.isEmpty() || prezime.isEmpty() || telefon.isEmpty()){
            request.setAttribute("Poruka", "Morate popuniti sva polja");
            request.getRequestDispatcher("Registracija.jsp").forward(request, response);
        }
        else{
            
        try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/autorezervacija", "root", "");
                    Statement st=con.createStatement();
                    
                    st.executeUpdate("insert into korisnik(ime,prezime,email,telefon,password,idAuto,idRezervacija,racun)"
                            + " VALUES('"+ime+"','"+prezime+"','"+email+"','"+telefon+"','"+password+"','"+idAuto+"','"+idRegistracija+"','"+racun+"');");
                   
                    st.close();
                    con.close();
                    
                    request.setAttribute("poruka","Registrovanje uspesno!Ulogujte se!");
                    request.getRequestDispatcher("Logovanje.jsp").forward(request, response);
                    
                    
                }catch(ClassNotFoundException ex){}
                 catch(SQLException sqe){
                                    
                }
    }
    }

}
