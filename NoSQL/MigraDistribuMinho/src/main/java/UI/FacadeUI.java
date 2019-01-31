package UI;

import Controller.*;

public class FacadeUI {
    Controlador c;
    
    public void start(){
        new Intro().setVisible(true);
    }
    
    public int extraiDados(){
        c = new Controlador();
        c.extraiDados();
        return 50;
    }
    
    public int migraDados(){
        c.migraDados();
        return 50;
    }
    
    public void confirmaMigracao(){} // importa
}
