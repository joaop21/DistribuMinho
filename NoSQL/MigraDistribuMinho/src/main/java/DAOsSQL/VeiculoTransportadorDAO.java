/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOsSQL;

import Business.Encomenda;
import Business.VeiculoTransportador;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author diogobraga
 */
public class VeiculoTransportadorDAO {
    
    public List<VeiculoTransportador> getVeiculosTransportadores() throws SQLException, Exception{
        Connection c = Connect.connect();
        List<VeiculoTransportador> resultado = new ArrayList<>();
        if(c!=null) { 
            PreparedStatement ps = c.prepareStatement("SELECT * FROM VeiculoTransportador;");
            ResultSet rs = ps.executeQuery();
            while(rs.next()) { 
                VeiculoTransportador res = new VeiculoTransportador(); 
                res.setMatricula(rs.getString("matricula"));
                res.setMarca(rs.getString("marca"));
                res.setNrKmsRealizados(rs.getInt("NrKmsRealizados"));
                res.setAnoFabrico(rs.getInt("anoFabrico"));
                res.setDataInspecao(rs.getDate("dataInspecao")); 
                res.setKmsMaximos(rs.getInt("kmsMaximos"));
                res.setRenovacaoSeguro(rs.getDate("dataRenovacaoSeguro"));
                res.setRenovacaoImpostoSelo(rs.getDate("dataRenovacaoImpostoSelo"));
                res.setCondutor(rs.getString("condutor")); 
                res.setNrArmazem(rs.getInt("NrArmazem"));
                resultado.add(res);
            }
        } else{
            throw new Exception("Unable to establish connection");
        }
        Connect.close(c);
        return resultado;
    } 
}
