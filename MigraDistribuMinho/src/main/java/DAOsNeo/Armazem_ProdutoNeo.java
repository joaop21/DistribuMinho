/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOsNeo;

import Business.Armazem_Produto;
import java.util.List;
import org.neo4j.driver.v1.Driver;
import org.neo4j.driver.v1.Session;
import org.neo4j.driver.v1.Transaction;
import static org.neo4j.driver.v1.Values.parameters;

/**
 *
 * @author joao
 */
public class Armazem_ProdutoNeo {
    public void migraArmazens_Produtos(List<Armazem_Produto> ar_produtos){
        Driver driver = ConnectNeo.connection();
        Session session = driver.session();
        
        try (Transaction tx = session.beginTransaction()){
            for(Armazem_Produto ap : ar_produtos){
                             
                tx.run("MATCH (p:Produto{idProduto:{id}})" + 
                       "MATCH (ar:Armazem{NrArmazem:{arm}})" + 
                       "CREATE (p) -[:ARMAZENADO_EM{stock:{sto}}]-> (ar)", parameters("id", ap.getIdProduto(), "arm", ap.getNrArmazem(),"sto", ap.getStock()));
            }
            tx.success();
        }
        ConnectNeo.close(driver);
    }
}
