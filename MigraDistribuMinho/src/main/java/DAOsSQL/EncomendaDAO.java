/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOsSQL;

import Business.Encomenda;
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
public class EncomendaDAO {
    
    public List<Encomenda> getEncomendas() throws SQLException, Exception{
        Connection c = Connect.connect();
        List<Encomenda> resultado = new ArrayList<>();
        if(c!=null) { 
            PreparedStatement ps = c.prepareStatement("SELECT * FROM Encomenda;");
            ResultSet rs = ps.executeQuery();
            while(rs.next()) { 
                Encomenda res = new Encomenda(); 
                res.setNrEncomenda(rs.getInt("NrEncomenda")); 
                res.setDataPedido(rs.getDate("dataPedido")); 
                res.setDataEntrega(rs.getDate("dataEntrega")); 
                res.setDistancia(rs.getFloat("distancia"));
                res.setVeiculotransportador_matricula(rs.getString("Veiculotransportador_matricula")); 
                res.setCliente_nif(rs.getInt("Cliente_NIF"));  
                resultado.add(res);
            }
        }
        else{
            throw new Exception("Unable to establish connection");
        }
        Connect.close(c);
        return resultado;
    } 
}
