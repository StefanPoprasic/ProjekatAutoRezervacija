/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import javafx.scene.text.Text;

/**
 *
 * @author POPRASIC
 */
public class Informacije {
    private int idInfo;
    private String zapremina="";
    private String konjskaSnaga="";
    private String maxBrzina="";
    private String ubrzanje="";
    private String potrosnjaKom="";
    private String tekst="";

    public String getTekst() {
        return tekst;
    }

    public void setTekst(String tekst) {
        this.tekst = tekst;
    }
    

    public int getIdInfo() {
        return idInfo;
    }

    public void setIdInfo(int idInfo) {
        this.idInfo = idInfo;
    }

    public String getZapremina() {
        return zapremina;
    }

    public void setZapremina(String zapremina) {
        this.zapremina = zapremina;
    }

    public String getKonjskaSnaga() {
        return konjskaSnaga;
    }

    public void setKonjskaSnaga(String konjskaSnaga) {
        this.konjskaSnaga = konjskaSnaga;
    }

    public String getMaxBrzina() {
        return maxBrzina;
    }

    public void setMaxBrzina(String maxBrzina) {
        this.maxBrzina = maxBrzina;
    }

    public String getUbrzanje() {
        return ubrzanje;
    }

    public void setUbrzanje(String ubrzanje) {
        this.ubrzanje = ubrzanje;
    }

    public String getPotrosnjaKom() {
        return potrosnjaKom;
    }

    public void setPotrosnjaKom(String potrosnjaKom) {
        this.potrosnjaKom = potrosnjaKom;
    }

   
    
}
