/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business;

/**
 *
 * @author diogobraga
 */
public class Produto_Encomenda {
    int nrEncomenda;
    int idProduto;
    int quantidade;

    public Produto_Encomenda() {
        this.nrEncomenda = 0;
        this.idProduto = 0;
        this.quantidade = 0;
    }

    public int getNrEncomenda() {
        return nrEncomenda;
    }

    public void setNrEncomenda(int nrEncomenda) {
        this.nrEncomenda = nrEncomenda;
    }

    public int getIdProduto() {
        return idProduto;
    }

    public void setIdProduto(int idProduto) {
        this.idProduto = idProduto;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }
    
    
    
}
