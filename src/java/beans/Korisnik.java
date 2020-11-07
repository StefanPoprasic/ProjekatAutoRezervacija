/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.sql.Date;
import java.sql.Time;

/**
 *
 * @author POPRASIC
 */
public class Korisnik {
    private int idKorisnik;
    private String ime="";
    private String prezime="";
    private String email="";
    private int telefon;
    private String password="";
    private int idAuto;
    private int idRezervacija;
    private String kupovina="";
    private int racun;
    private String marka="";
    private String gorivo="";
    private String menjac="";
    private String karoserija="";
    private int cena;
    private int serija;
    private String datum="";
    private String vreme="";

    public String getDatum() {
        return datum;
    }

    public void setDatum(String datum) {
        this.datum = datum;
    }

    public String getVreme() {
        return vreme;
    }

    public void setVreme(String vreme) {
        this.vreme = vreme;
    }
   
    public String getMarka() {
        return marka;
    }

    public void setMarka(String marka) {
        this.marka = marka;
    }

    public String getGorivo() {
        return gorivo;
    }

    public void setGorivo(String gorivo) {
        this.gorivo = gorivo;
    }

    public String getMenjac() {
        return menjac;
    }

    public void setMenjac(String menjac) {
        this.menjac = menjac;
    }

    public String getKaroserija() {
        return karoserija;
    }

    public void setKaroserija(String karoserija) {
        this.karoserija = karoserija;
    }

    public int getCena() {
        return cena;
    }

    public void setCena(int cena) {
        this.cena = cena;
    }

    public int getSerija() {
        return serija;
    }

    public void setSerija(int serija) {
        this.serija = serija;
    }


   

    public int getIdKorisnik() {
        return idKorisnik;
    }

    public void setIdKorisnik(int idKorisnik) {
        this.idKorisnik = idKorisnik;
    }

    public String getIme() {
        return ime;
    }

    public void setIme(String ime) {
        this.ime = ime;
    }

    public String getPrezime() {
        return prezime;
    }

    public void setPrezime(String prezime) {
        this.prezime = prezime;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getTelefon() {
        return telefon;
    }

    public void setTelefon(int telefon) {
        this.telefon = telefon;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getIdAuto() {
        return idAuto;
    }

    public void setIdAuto(int idAuto) {
        this.idAuto = idAuto;
    }

    public int getIdRezervacija() {
        return idRezervacija;
    }

    public void setIdRezervacija(int idRezervacija) {
        this.idRezervacija = idRezervacija;
    }

    public String getKupovina() {
        return kupovina;
    }

    public void setKupovina(String kupovina) {
        this.kupovina = kupovina;
    }

    public int getRacun() {
        return racun;
    }

    public void setRacun(int racun) {
        this.racun = racun;
    }
}
