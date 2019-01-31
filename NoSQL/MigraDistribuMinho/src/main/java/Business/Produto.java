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
public class Produto {
   int idProduto;
   String nome;
   float preco;
   String designacaoTipo;

    public Produto() {
        this.idProduto = 0;
        this.nome = "";
        this.preco = (float) 0.0;
        this.designacaoTipo = "";
    }

    public int getIdProduto() {
        return idProduto;
    }

    public void setIdProduto(int idProduto) {
        this.idProduto = idProduto;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public float getPreco() {
        return preco;
    }

    public void setPreco(float preco) {
        this.preco = preco;
    }

    public String getDesignacaoTipo() {
        return designacaoTipo;
    }

    public void setDesignacaoTipo(String designacaoTipo) {
        this.designacaoTipo = designacaoTipo;
    }
   
   
}
