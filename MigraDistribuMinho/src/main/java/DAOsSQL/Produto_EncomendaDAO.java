/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOsSQL;

import Business.Produto_Encomenda;
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
public class Produto_EncomendaDAO {
    public List<Produto_Encomenda> getProdutos_Encomendas() throws SQLException, Exception{
        Connection c = Connect.connect();
        List<Produto_Encomenda> resultado = new ArrayList<>();
        if(c!=null) { 
            PreparedStatement ps = c.prepareStatement("SELECT * FROM Produto_Encomenda;");
            ResultSet rs = ps.executeQuery();
            while(rs.next()) { 
                Produto_Encomenda res = new Produto_Encomenda(); 
                res.setNrEncomenda(rs.getInt("NrEncomenda")); 
                res.setIdProduto(rs.getInt("idProduto"));
                res.setQuantidade(rs.getInt("quantidade")); 
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
