/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business;

/**
 *
 * @author joao
 */
public class Armazem {
    int nrArmazem;
    int nrCamioes;
    String rua;
    String cidade;

    public Armazem() {
        this.nrArmazem=0;
        this.nrCamioes=0;
        this.rua="";
        this.cidade="";
    }

    public int getNrArmazem() {
        return nrArmazem;
    }

    public void setNrArmazem(int nrArmazem) {
        this.nrArmazem = nrArmazem;
    }

    public int getNrCamioes() {
        return nrCamioes;
    }

    public void setNrCamioes(int nrCamioes) {
        this.nrCamioes = nrCamioes;
    }

    public String getRua() {
        return rua;
    }

    public void setRua(String rua) {
        this.rua = rua;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }
    
    
}
