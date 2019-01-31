/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Business.*;
import DAOsSQL.FacadeDAOsSQL;
import DAOsNeo.FacadeDAOsNeo;
import java.util.List;

/**
 *
 * @author joao
 */
public class Controlador {
    List<Armazem> armazens;
    List<Cliente> clientes;
    List<Produto> produtos;
    List<VeiculoTransportador> veiculosTransportadores;
    List<Encomenda> encomendas;
    List<Armazem_Produto> armazens_produtos;
    List<Produto_Encomenda> produtos_encomendas;
    List<Contacto> contactos;
    
    public void extraiDados(){
        FacadeDAOsSQL fdsql = new FacadeDAOsSQL();
        
        armazens = fdsql.getArmazens();
        
        clientes = fdsql.getClientes();
        
        produtos = fdsql.getProdutos();
         
        veiculosTransportadores = fdsql.getVeiculosTransportadores();
         
        encomendas = fdsql.getEncomendas();
         
        armazens_produtos = fdsql.getArmazens_Produtos();
         
        produtos_encomendas = fdsql.getProdutos_Encomendas();
        
        contactos = fdsql.getContactos();
    }
    
    public void migraDados(){
        FacadeDAOsNeo fdneo = new FacadeDAOsNeo();
        
        fdneo.migraArmazens(armazens);
        
        fdneo.migraClientes(clientes);
        
        fdneo.migraProdutos(produtos);
        
        fdneo.migraContactos(contactos);
        
        fdneo.migraVeiculosTransportadores(veiculosTransportadores);
        
        fdneo.migraEncomendas(encomendas);
        
        fdneo.migraArmazens_Produtos(armazens_produtos);
        
        fdneo.migraProdutos_Encomendas(produtos_encomendas);
    }
    
}
