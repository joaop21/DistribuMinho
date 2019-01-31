/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOsNeo;

import Business.Cliente;
import java.util.List;
import org.neo4j.driver.v1.Driver;
import org.neo4j.driver.v1.Session;
import org.neo4j.driver.v1.Transaction;
import static org.neo4j.driver.v1.Values.parameters;

/**
 *
 * @author joao
 */
public class ClienteNeo {
    public void migraClientes(List<Cliente> clientes){
        Driver driver = ConnectNeo.connection();
        Session session = driver.session();
        
        try (Transaction tx = session.beginTransaction()){
            for(Cliente c : clientes){
                tx.run("CREATE (a:Cliente{nif:{nif},nome:{n},rua:{r},cidade:{c},endereco:{e},designacao:{d}})", 
                        parameters("nif", c.getNif(),"n",c.getNome(),"r",c.getRua(),"c",c.getCidade(), "e",c.getEndereco(), "d", c.getDesignacao()));
            }
            tx.success();
        }
        ConnectNeo.close(driver);
    }
}
