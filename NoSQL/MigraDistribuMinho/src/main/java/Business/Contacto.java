/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business;

/**
 *
 * @author joao
 */
public class Contacto {
    String contacto;
    int cliente_NIF;

    public Contacto() {
        this.contacto = "";
        this.cliente_NIF = 0;
    }

    public String getContacto() {
        return contacto;
    }

    public void setContacto(String contacto) {
        this.contacto = contacto;
    }

    public int getCliente_NIF() {
        return cliente_NIF;
    }

    public void setCliente_NIF(int cliente_NIF) {
        this.cliente_NIF = cliente_NIF;
    }
    
    
}
