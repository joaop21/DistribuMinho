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
public class VeiculoTransportador {
    String matricula;
    String marca;
    int nrKmsRealizados;
    int anoFabrico;
    Date dataInspecao;
    int kmsMaximos;
    Date renovacaoSeguro;
    Date renovacaoImpostoSelo;
    String condutor;
    int nrArmazem;

    public VeiculoTransportador() {
        this.matricula = "";
        this.marca = "";
        this.nrKmsRealizados = 0;
        this.anoFabrico = 0;
        this.dataInspecao = new Date();
        this.kmsMaximos = 0;
        this.renovacaoSeguro = new Date();
        this.renovacaoImpostoSelo = new Date();
        this.condutor = "";
        this.nrArmazem = 0;
    }

    public String getMatricula() {
        return matricula;
    }

    public String getMarca() {
        return marca;
    }

    public int getNrKmsRealizados() {
        return nrKmsRealizados;
    }

    public int getAnoFabrico() {
        return anoFabrico;
    }

    public Date getDataInspecao() {
        return dataInspecao;
    }

    public int getKmsMaximos() {
        return kmsMaximos;
    }

    public Date getRenovacaoSeguro() {
        return renovacaoSeguro;
    }

    public Date getRenovacaoImpostoSelo() {
        return renovacaoImpostoSelo;
    }

    public String getCondutor() {
        return condutor;
    }

    public int getNrArmazem() {
        return nrArmazem;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public void setNrKmsRealizados(int nrKmsRealizados) {
        this.nrKmsRealizados = nrKmsRealizados;
    }

    public void setAnoFabrico(int anoFabrico) {
        this.anoFabrico = anoFabrico;
    }

    public void setDataInspecao(Date dataInspecao) {
        this.dataInspecao = dataInspecao;
    }

    public void setKmsMaximos(int kmsMaximos) {
        this.kmsMaximos = kmsMaximos;
    }

    public void setRenovacaoSeguro(Date renovacaoSeguro) {
        this.renovacaoSeguro = renovacaoSeguro;
    }

    public void setRenovacaoImpostoSelo(Date renovacaoImpostoSelo) {
        this.renovacaoImpostoSelo = renovacaoImpostoSelo;
    }

    public void setCondutor(String condutor) {
        this.condutor = condutor;
    }

    public void setNrArmazem(int nrArmazem) {
        this.nrArmazem = nrArmazem;
    }
    
    
}
