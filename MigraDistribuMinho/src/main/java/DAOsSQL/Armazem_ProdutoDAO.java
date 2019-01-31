/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOsSQL;

import Business.Armazem_Produto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author 35192
 */
public class Armazem_ProdutoDAO {
        public List<Armazem_Produto> getArmazens_Produtos() throws SQLException, Exception{
        Connection c = Connect.connect();
        List<Armazem_Produto> resultado = new ArrayList<>();
        if(c!=null) { 
            PreparedStatement ps = c.prepareStatement("SELECT * FROM Armazem_Produto;");
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                Armazem_Produto res = new Armazem_Produto(); 
                res.setNrArmazem(rs.getInt("NrArmazem"));
                res.setIdProduto(rs.getInt("IdProduto")); 
                res.setStock(rs.getInt("stock"));  
                resultado.add(res);
            }
        } else{
            throw new Exception("Unable to establish connection");
        }
        Connect.close(c);
        return resultado;
    } 
}