/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOsSQL;

import Business.Contacto;
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
public class ContactoDAO {
    
    public List<Contacto> getContactos() throws SQLException, Exception{
        Connection c = Connect.connect();
        List<Contacto> resultado = new ArrayList<>();
        if(c!=null) { 
            PreparedStatement ps = c.prepareStatement("SELECT * FROM Contacto;");
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Contacto con = new Contacto();
                con.setContacto(rs.getString("Contacto"));
                con.setCliente_NIF(rs.getInt("Cliente_NIF"));
                resultado.add(con);
            }
        } else{
            throw new Exception("Unable to establish connection");
        }
        Connect.close(c);
        return resultado;
    }
    
}
