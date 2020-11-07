/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import beans.Informacije;
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
public class InfoIzmena extends HttpServlet {

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
            out.println("<title>Servlet InfoIzmena</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet InfoIzmena at " + request.getContextPath() + "</h1>");
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
       String idInf=request.getParameter("idInf");
        HttpSession sesija=request.getSession();
        ArrayList<Informacije> informacijes=new ArrayList<>();
         Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/autorezervacija", "root", "");
            Statement stmt=con.createStatement();
            String upit="select idInfo, zapremina , konjskaSnage , maxBrzina , ubrzanje , potrosnjaKom , tekst from informacije where idInfo='"+idInf+"'";
            ResultSet rs=stmt.executeQuery(upit);
            while(rs.next()){
                Informacije info=new Informacije();
                int idInfo=rs.getInt("idInfo");
                String zapremina=rs.getString("zapremina");
                String konjskaSnaga=rs.getString("konjskaSnage");
                String maxBrzina=rs.getString("maxBrzina");
                String ubrzanje=rs.getString("ubrzanje");
                String potrosnjaKom=rs.getString("potrosnjaKom");
                String tekst=rs.getString("tekst");
                info.setZapremina(zapremina);
                info.setIdInfo(idInfo);
                info.setKonjskaSnaga(konjskaSnaga);
                info.setMaxBrzina(maxBrzina);
                info.setUbrzanje(ubrzanje);
                info.setPotrosnjaKom(potrosnjaKom);
                info.setTekst(tekst);
                informacijes.add(info);
                sesija.setAttribute("info", info);
                
            }
           
            sesija.setAttribute("informacijes",informacijes);
            
            request.getRequestDispatcher("InfoPromena.jsp").forward(request, response);
            
           
        
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
        processRequest(request, response);
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
