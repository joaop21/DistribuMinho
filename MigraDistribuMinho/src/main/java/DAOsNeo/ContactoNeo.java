/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOsNeo;

import Business.Contacto;
import java.util.List;
import org.neo4j.driver.v1.Driver;
import org.neo4j.driver.v1.Session;
import org.neo4j.driver.v1.Transaction;
import static org.neo4j.driver.v1.Values.parameters;

/**
 *
 * @author joao
 */
public class ContactoNeo {
    
    public void migraContactos(List<Contacto> contactos){
        Driver driver = ConnectNeo.connection();
        Session session = driver.session();
        
        try (Transaction tx = session.beginTransaction()){
            for(Contacto c : contactos){
                tx.run("CREATE (a:Contacto{contacto:{contact},Cliente_NIF:{cn}})", 
                        parameters("contact", c.getContacto(),"cn",c.getCliente_NIF()));
            }
            tx.success();
        }
        ConnectNeo.close(driver);
    }
    
    public void migraContactos_Cliente(List<Contacto> contactos){
        Driver driver = ConnectNeo.connection();
        Session session = driver.session();
        
        try (Transaction tx = session.beginTransaction()){
            for(Contacto c : contactos){
                tx.run("MATCH (c:Cliente{nif:{n}})" + 
                       "MATCH (con:Contacto{contacto:{cont}})" + 
                       "CREATE (c) -[:TEM]-> (con)", parameters("n", c.getCliente_NIF(), "cont", c.getContacto()));
            }
            tx.success();
        }
        ConnectNeo.close(driver);
    }
    
}
