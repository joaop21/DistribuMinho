package DAOsSQL;

import Business.*;
import java.util.ArrayList;
import java.util.List;

public class FacadeDAOsSQL {
    
    public List<Armazem> getArmazens(){
        ArmazemDAO ad = new ArmazemDAO();
        List<Armazem> res = new ArrayList<>();
        try{
            res = ad.getArmazens();
        } catch(Exception e){e.printStackTrace();}
        return res;
    }
    
    public List<Cliente> getClientes(){
        ClienteDAO ad = new ClienteDAO();
        List<Cliente> res = new ArrayList<>();
        try{
            res = ad.getClientes();
        } catch(Exception e){e.printStackTrace();}
        return res;
    }
    
    public List<Produto> getProdutos(){
        ProdutoDAO ad = new ProdutoDAO();
        List<Produto> res = new ArrayList<>();
        try{
            res = ad.getProdutos();
        } catch(Exception e){e.printStackTrace();}
        return res;
    }
    
    public List<VeiculoTransportador> getVeiculosTransportadores(){
        VeiculoTransportadorDAO ad = new VeiculoTransportadorDAO();
        List<VeiculoTransportador> res = new ArrayList<>();
        try{
            res = ad.getVeiculosTransportadores();
        } catch(Exception e){e.printStackTrace();}
        return res;
    }
    
    public List<Encomenda> getEncomendas(){
        EncomendaDAO ad = new EncomendaDAO();
        List<Encomenda> res = new ArrayList<>();
        try{
            res = ad.getEncomendas();
        } catch(Exception e){e.printStackTrace();}
        return res;
    }
    
    public List<Armazem_Produto> getArmazens_Produtos(){
        Armazem_ProdutoDAO ad = new Armazem_ProdutoDAO();
        List<Armazem_Produto> res = new ArrayList<>();
        try{
            res = ad.getArmazens_Produtos();
        } catch(Exception e){e.printStackTrace();}
        return res;
    }
    
    public List<Produto_Encomenda> getProdutos_Encomendas(){
        Produto_EncomendaDAO ad = new Produto_EncomendaDAO();
        List<Produto_Encomenda> res = new ArrayList<>();
        try{
            res = ad.getProdutos_Encomendas();
        } catch(Exception e){e.printStackTrace();}
        return res;
    }
    
    public List<Contacto> getContactos(){
        ContactoDAO ad = new ContactoDAO();
        List<Contacto> res = new ArrayList<>();
        try{
            res = ad.getContactos();
        } catch(Exception e){e.printStackTrace();}
        return res;
    }
    
}
