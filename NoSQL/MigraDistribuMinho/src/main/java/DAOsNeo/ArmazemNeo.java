/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOsNeo;

import Business.Armazem;
import java.util.List;
import org.neo4j.driver.v1.Driver;
import org.neo4j.driver.v1.Session;
import org.neo4j.driver.v1.Transaction;
import static org.neo4j.driver.v1.Values.parameters;

/**
 *
 * @author joao
 */
public class ArmazemNeo {
    public void migraArmazens(List<Armazem> armazens){
        Driver driver = ConnectNeo.connection();
        Session session = driver.session();
        
        try (Transaction tx = session.beginTransaction()){
            for(Armazem ar : armazens){
                tx.run("CREATE (a:Armazem {NrArmazem:{na},NrCamioes:{nc},rua:{r},cidade:{c}})", 
                        parameters("na", ar.getNrArmazem(),"nc",ar.getNrCamioes(),"r",ar.getRua(),"c",ar.getCidade()));
            }
            tx.success();
        }
        ConnectNeo.close(driver);
    }
}
