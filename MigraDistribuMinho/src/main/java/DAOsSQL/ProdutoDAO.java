/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOsSQL;

import Business.Produto;
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
public class ProdutoDAO {
    public List<Produto> getProdutos() throws SQLException, Exception{
        Connection c = Connect.connect();
        List<Produto> resultado = new ArrayList<>();
        if(c!=null) { 
            PreparedStatement ps1 = c.prepareStatement("SELECT * FROM Produto;");
            ResultSet rs1 = ps1.executeQuery();
            while(rs1.next()) { 
                Produto res = new Produto(); 
                res.setIdProduto(rs1.getInt("idProduto")); 
                res.setNome(rs1.getString("nome")); 
                res.setPreco(rs1.getFloat("preco"));
                int tipo = rs1.getInt("tipo");
                
                PreparedStatement ps2 = c.prepareStatement("SELECT tp.Designacao FROM Tipo_Produto tp, Produto p WHERE tp.idTipoProduto = ? AND p.IdProduto = ?");
                ps2.setInt(1, tipo);
                ps2.setInt(2, res.getIdProduto());
                ResultSet rs2 = ps2.executeQuery();
                if(rs2.next())
                    res.setDesignacaoTipo(rs2.getString("Designacao"));
                else res.setDesignacaoTipo(null);
                
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
