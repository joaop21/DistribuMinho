/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business;

import java.util.Date;

/**
 *
 * @author joao
 */
public class Encomenda {
    int nrEncomenda;
    Date dataPedido;
    Date dataEntrega;
    Float distancia;
    String veiculotransportador_matricula;
    int cliente_nif;

    public Encomenda() {
        this.nrEncomenda = 0;
        this.dataPedido = new Date();
        this.dataEntrega = new Date();
        this.distancia = (float) 0.0;
        this.veiculotransportador_matricula = "";
        this.cliente_nif = 0;
    }

    public int getNrEncomenda() {
        return nrEncomenda;
    }

    public Date getDataPedido() {
        return dataPedido;
    }

    public Date getDataEntrega() {
        return dataEntrega;
    }

    public Float getDistancia() {
        return distancia;
    }

    public String getVeiculotransportador_matricula() {
        return veiculotransportador_matricula;
    }

    public int getCliente_nif() {
        return cliente_nif;
    }

    public void setNrEncomenda(int nrEncomenda) {
        this.nrEncomenda = nrEncomenda;
    }

    public void setDataPedido(Date dataPedido) {
        this.dataPedido = dataPedido;
    }

    public void setDataEntrega(Date dataEntrega) {
        this.dataEntrega = dataEntrega;
    }

    public void setDistancia(Float distancia) {
        this.distancia = distancia;
    }

    public void setVeiculotransportador_matricula(String veiculotransportador_matricula) {
        this.veiculotransportador_matricula = veiculotransportador_matricula;
    }

    public void setCliente_nif(int cliente_nif) {
        this.cliente_nif = cliente_nif;
    }
    
    
}
