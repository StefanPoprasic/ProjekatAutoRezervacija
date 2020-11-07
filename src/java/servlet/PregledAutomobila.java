/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import beans.Automobil;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author POPRASIC
 */
public class PregledAutomobila extends HttpServlet {

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
            out.println("<title>Servlet PregledAutomobila</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PregledAutomobila at " + request.getContextPath() + "</h1>");
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
        ArrayList<Automobil> automobils=new ArrayList<>();
         Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/autorezervacija", "root", "");
            Statement stmt=con.createStatement();
            String upit="select idAuto , marka , gorivo , menjac , karoserija , cena , idInfo , serija from automobil";
            ResultSet rs=stmt.executeQuery(upit);
            while(rs.next()){
                Automobil automobil=new Automobil();
                String marka=rs.getString("marka");
                String gorivo=rs.getString("gorivo");
                String menjac=rs.getString("menjac");
                String karoserija=rs.getString("karoserija");
                int cena=rs.getInt("cena");
                int idInfo=rs.getInt("idInfo");
                int serija=rs.getInt("serija");
                automobil.setIdAuto(idInfo);
                automobil.setMarka(marka);
                automobil.setGorivo(gorivo);
                automobil.setMenjac(menjac);
                automobil.setKaroserija(karoserija);
                automobil.setCena(cena);
                automobil.setIdInfo(idInfo);
                automobil.setSerija(serija);
                automobils.add(automobil);
                sesija.setAttribute("automobil", automobil);
                
            }
          
            
                sesija.setAttribute("automobils",automobils);
            request.getRequestDispatcher("Automobili.jsp").forward(request, response);
            
        
    }
        catch(SQLException e){
            sesija.invalidate();
        if(con!=null)
              try{
                  con.close();
              }catch(SQLException ex){
                  
              }
          
      }catch(ClassNotFoundException cnf){}
    }

   

}
