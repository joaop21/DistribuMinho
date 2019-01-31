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
public class Armazem_Produto {
    int nrArmazem;
    int idProduto;
    int stock;

    public int getNrArmazem() {
        return nrArmazem;
    }

    public void setNrArmazem(int nrArmazem) {
        this.nrArmazem = nrArmazem;
    }

    public int getIdProduto() {
        return idProduto;
    }

    public void setIdProduto(int idProduto) {
        this.idProduto = idProduto;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }
    
}
