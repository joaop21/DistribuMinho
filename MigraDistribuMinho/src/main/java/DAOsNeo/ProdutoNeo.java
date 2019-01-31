/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOsNeo;

import Business.Produto;
import java.util.List;
import org.neo4j.driver.v1.Driver;
import org.neo4j.driver.v1.Session;
import org.neo4j.driver.v1.Transaction;
import static org.neo4j.driver.v1.Values.parameters;

/**
 *
 * @author joao
 */
public class ProdutoNeo {
    public void migraProdutos(List<Produto> produtos){
        Driver driver = ConnectNeo.connection();
        Session session = driver.session();
        
        try (Transaction tx = session.beginTransaction()){
            for(Produto p : produtos){
                tx.run("CREATE (a:Produto {idProduto:{na},nome:{nc},preco:{r},Designacao:{c}})", 
                        parameters("na", p.getIdProduto(),"nc",p.getNome(),"r",p.getPreco(),"c",p.getDesignacaoTipo()));
            }
            tx.success();
        }
        ConnectNeo.close(driver);
    }
}
