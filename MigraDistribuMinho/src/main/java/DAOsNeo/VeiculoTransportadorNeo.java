/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOsNeo;

import Business.VeiculoTransportador;
import java.util.List;
import org.neo4j.driver.v1.Driver;
import org.neo4j.driver.v1.Session;
import org.neo4j.driver.v1.Transaction;
import static org.neo4j.driver.v1.Values.parameters;

/**
 *
 * @author joao
 */
public class VeiculoTransportadorNeo {
    
    public void migraVeiculosTransportadores(List<VeiculoTransportador> veiculos){
        Driver driver = ConnectNeo.connection();
        Session session = driver.session();
        
        try (Transaction tx = session.beginTransaction()){
            for(VeiculoTransportador v : veiculos){
                
                String dinsp = String.valueOf(v.getDataInspecao());
                String rs = String.valueOf(v.getRenovacaoSeguro());
                String ris = String.valueOf(v.getRenovacaoImpostoSelo());
                
                tx.run("CREATE (a:VeiculoTransportador{matricula:{m},marca:{mar},nrKmsRealizados:{nrkms},anoFabrico:{af},dataInspecao:{di},kmsMaximos:{kmax},renovacaoSeguro:{rs},renovacaoImpostoSelo:{ris},condutor:{con},nrArmazem:{nrar}})", 
                        parameters("m", v.getMatricula(),"mar",v.getMarca(),"nrkms",v.getNrKmsRealizados(),"af",v.getAnoFabrico(), "di",dinsp, "kmax", v.getKmsMaximos(), "rs", rs, "ris", ris, "con",v.getCondutor(), "nrar", v.getNrArmazem()));
            }
            tx.success();
        }
        ConnectNeo.close(driver);
    }
    
    public void migraVeiculosTransportadores_Armazens(List<VeiculoTransportador> veiculos){
        Driver driver = ConnectNeo.connection();
        Session session = driver.session();
        
        try (Transaction tx = session.beginTransaction()){
            for(VeiculoTransportador v : veiculos){
                tx.run("MATCH (v:VeiculoTransportador) WHERE v.matricula = {matricula}" + 
                       "MATCH (ar:Armazem) WHERE ar.NrArmazem = {arm}" + 
                       "CREATE (v) -[:PERTENCE_A]-> (ar)", parameters("matricula", v.getMatricula(), "arm", v.getNrArmazem()));
            }
            tx.success();
        }
        ConnectNeo.close(driver);
    }
    
}
