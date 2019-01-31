/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOsNeo;

import Business.*;
import java.util.List;

/**
 *
 * @author joao
 */
public class FacadeDAOsNeo {
    
    public void migraArmazens(List<Armazem> armazens){
        ArmazemNeo ar = new ArmazemNeo();
        ar.migraArmazens(armazens);
    }
    
    public void migraClientes(List<Cliente> clientes){
        ClienteNeo p = new ClienteNeo();
        p.migraClientes(clientes);
    }
    
    public void migraProdutos(List<Produto> produtos){
        ProdutoNeo p = new ProdutoNeo();
        p.migraProdutos(produtos);
    }
    
    public void migraVeiculosTransportadores(List<VeiculoTransportador> veiculosTransportadores){
        VeiculoTransportadorNeo p = new VeiculoTransportadorNeo();
        p.migraVeiculosTransportadores(veiculosTransportadores);
        p.migraVeiculosTransportadores_Armazens(veiculosTransportadores);
    }
    
    public void migraEncomendas(List<Encomenda> encomendas){
        EncomendaNeo p = new EncomendaNeo();
        p.migraEncomendas(encomendas);
        p.migraEncomendas_Veiculos(encomendas);
        p.migraEncomendas_Clientes(encomendas);
    }
    public void migraArmazens_Produtos(List<Armazem_Produto> armazens_produtos){
        Armazem_ProdutoNeo p = new Armazem_ProdutoNeo();
        p.migraArmazens_Produtos(armazens_produtos);
    }
    public void migraProdutos_Encomendas(List<Produto_Encomenda> produtos_encomendas){
        Produto_EncomendaNeo p = new Produto_EncomendaNeo();
        p.migraProdutos_Encomendas(produtos_encomendas);
    }
    
    public void migraContactos(List<Contacto> contactos){
        ContactoNeo c = new ContactoNeo();
        c.migraContactos(contactos);
        c.migraContactos_Cliente(contactos);
    }
}
