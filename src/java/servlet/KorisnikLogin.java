/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import beans.Korisnik;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Time;
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
public class KorisnikLogin extends HttpServlet {

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
            out.println("<title>Servlet KorisnikLogin</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet KorisnikLogin at " + request.getContextPath() + "</h1>");
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
           String email=request.getParameter("email");
        
        HttpSession sesija=request.getSession();
        ArrayList<Korisnik> users=new ArrayList<>();
         Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/autorezervacija", "root", "");
            Statement stmt=con.createStatement();
            String upit="select korisnik.idKorisnik , korisnik.ime , korisnik.prezime , korisnik.telefon , korisnik.email , korisnik.password , korisnik.idAuto , korisnik.idRezervacija , korisnik.kupovina , korisnik.racun , automobil.marka , automobil.gorivo , automobil.menjac , automobil.karoserija , automobil.cena , automobil.serija , rezervacija.vreme , rezervacija.datum from korisnik inner join automobil,rezervacija where korisnik.idAuto=automobil.idAuto and korisnik.idRezervacija=rezervacija.idRezervacija and  korisnik.email='"+email+"'";
            ResultSet rs=stmt.executeQuery(upit);
            while(rs.next()){
                Korisnik user = new Korisnik();
                int idAuto=rs.getInt("idAuto");
                int idKorisnik=rs.getInt("idKorisnik");
                String ime=rs.getString("ime");
                String prezime=rs.getString("prezime");
                int telefon=rs.getInt("telefon");
                String marka=rs.getString("marka");
                String gorivo=rs.getString("gorivo");
                String menjac=rs.getString("menjac");
                String karoserija=rs.getString("karoserija");
                String kupovina=rs.getString("Kupovina");
                int racun=rs.getInt("racun");
               // Date datum=rs.getDate("datum");
                //Time vreme=rs.getTime("rezervacija.vreme");
                String datum=rs.getString("datum");
                String vreme=rs.getString("vreme");
                user.setIdAuto(idAuto);
                user.setIme(ime);
                user.setIdKorisnik(idKorisnik);
                user.setPrezime(prezime);
                user.setTelefon(telefon);
                user.setEmail(email);
                user.setVreme(vreme);
                user.setMarka(marka);
                user.setGorivo(gorivo);
                user.setMenjac(menjac);
                user.setKaroserija(karoserija);
                user.setDatum(datum);
                user.setKupovina(kupovina);
                user.setRacun(racun);
                users.add(user);
                sesija.setAttribute("user", user);
                
            }
            sesija.setAttribute("users",users);
            request.getRequestDispatcher("PodaciKorisnika.jsp").forward(request, response);
        
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
