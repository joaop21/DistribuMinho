/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOsSQL;

import Business.Armazem;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author joao
 */
public class ArmazemDAO {
    
    public List<Armazem> getArmazens() throws SQLException, Exception{
        Connection c = Connect.connect();
        List<Armazem> resultado = new ArrayList<>();
        if(c!=null) { 
            PreparedStatement ps = c.prepareStatement("SELECT * FROM Armazem;");
            ResultSet rs = ps.executeQuery();
            while(rs.next()) { 
                Armazem res = new Armazem(); 
                res.setNrArmazem(rs.getInt("NrArmazem")); 
                res.setNrCamioes(rs.getInt("NrCamioes")); 
                res.setRua(rs.getString("rua")); 
                res.setCidade(rs.getString("cidade"));                
                resultado.add(res);
            }
        } else{
            throw new Exception("Unable to establish connection");
        }
        Connect.close(c);
        return resultado;
    } 
}
