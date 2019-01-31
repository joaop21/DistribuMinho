/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOsSQL;
import Business.Cliente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ricardinho
 */
public class ClienteDAO {
    public List<Cliente> getClientes() throws SQLException, Exception{
        Connection c = Connect.connect();
        List<Cliente> resultado = new ArrayList<>();
        if(c!=null) { 
            PreparedStatement ps = c.prepareStatement("SELECT * FROM Cliente;");
            ResultSet rs = ps.executeQuery();
            while(rs.next()) { 
                Cliente res = new Cliente(); 
                res.setNif(rs.getInt("NIF"));
                res.setNome(rs.getString("nome")); 
                res.setRua(rs.getString("rua")); 
                res.setCidade(rs.getString("cidade")); 
                res.setEndereco(rs.getString("endereco"));
                
                PreparedStatement ps1 = c.prepareStatement("SELECT Designacao FROM Tipo_Cliente WHERE idTipoCliente = ?;");
                ps1.setInt(1,res.getNif());
                ResultSet rs1 = ps1.executeQuery();
                if(rs1.next())
                    res.setDesignacao(rs.getString("Designacao"));
                else res.setDesignacao(null);

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

