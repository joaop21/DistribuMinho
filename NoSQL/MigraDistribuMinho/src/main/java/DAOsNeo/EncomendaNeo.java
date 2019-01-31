/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOsNeo;

import Business.Encomenda;
import java.util.List;
import org.neo4j.driver.v1.Driver;
import org.neo4j.driver.v1.Session;
import org.neo4j.driver.v1.Transaction;
import static org.neo4j.driver.v1.Values.parameters;

/**
 *
 * @author joao
 */
public class EncomendaNeo {
    
    public void migraEncomendas(List<Encomenda> encomendas){
        Driver driver = ConnectNeo.connection();
        Session session = driver.session();
        
        try (Transaction tx = session.beginTransaction()){
            for(Encomenda c : encomendas){

                String dp = String.valueOf(c.getDataPedido());
                String de = String.valueOf(c.getDataEntrega());
                
                tx.run("CREATE (a:Encomenda{nrEncomenda:{nrenc},dataPedido:{dp},dataEntrega:{de},distancia:{d},veiculotransportador_matricula:{vt},cliente_nif:{cnif}})", 
                        parameters("nrenc", c.getNrEncomenda(),"dp",dp,"de",de,"d",c.getDistancia(), "vt",c.getVeiculotransportador_matricula(), "cnif", c.getCliente_nif()));
            }
            tx.success();
        }
        ConnectNeo.close(driver);
    }
    
    public void migraEncomendas_Veiculos(List<Encomenda> encomendas){
        Driver driver = ConnectNeo.connection();
        Session session = driver.session();
        
        try (Transaction tx = session.beginTransaction()){
            for(Encomenda e : encomendas){
                tx.run("MATCH (e:Encomenda{nrEncomenda:{nre}})" + 
                       "MATCH (v:VeiculoTransportador{matricula:{matricula}})" + 
                       "CREATE (v) -[:TRANSPORTA]-> (e)", parameters("nre", e.getNrEncomenda(), "matricula", e.getVeiculotransportador_matricula()));
            }
            tx.success();
        }
        ConnectNeo.close(driver);
    }
    
    public void migraEncomendas_Clientes(List<Encomenda> encomendas){
        Driver driver = ConnectNeo.connection();
        Session session = driver.session();
        
        try (Transaction tx = session.beginTransaction()){
            for(Encomenda e : encomendas){
                tx.run("MATCH (e:Encomenda{nrEncomenda:{nre}})" + 
                       "MATCH (c:Cliente{nif:{nif}})" + 
                       "CREATE (e) -[:DESIGNADA_A]-> (c)", parameters("nre", e.getNrEncomenda(), "nif", e.getCliente_nif()));
            }
            tx.success();
        }
        ConnectNeo.close(driver);
    }
    
}
