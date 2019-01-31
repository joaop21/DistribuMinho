/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOsNeo;

import Business.Produto_Encomenda;
import java.util.List;
import org.neo4j.driver.v1.Driver;
import org.neo4j.driver.v1.Session;
import org.neo4j.driver.v1.Transaction;
import static org.neo4j.driver.v1.Values.parameters;

/**
 *
 * @author joao
 */
public class Produto_EncomendaNeo {
    public void migraProdutos_Encomendas(List<Produto_Encomenda> produtos_enc){
        Driver driver = ConnectNeo.connection();
        Session session = driver.session();
        
        try (Transaction tx = session.beginTransaction()){
            for(Produto_Encomenda pe : produtos_enc){

                tx.run("MATCH (p:Produto{idProduto:{id}})" + 
                       "MATCH (e:Encomenda{nrEncomenda:{nre}})" + 
                       "CREATE (p) -[:INCLUIDO_EM{quantidade:{q}}]-> (e)", 
                        parameters("id", pe.getIdProduto(), "nre", pe.getNrEncomenda(),"q", pe.getQuantidade()));
            }
            tx.success();
        }
        ConnectNeo.close(driver);
    }
}
