/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaz;
import java.awt.Graphics;
import javax.swing.ImageIcon;
import javax.swing.JPanel;
/**
 *
 * @author migue
 */
public class Imagen extends javax.swing.JPanel{
    int x, y;
    static String  ruta = "";
    
    public Imagen(JPanel panel) {
        this.x = panel.getWidth();
        this.y = panel.getHeight();
        this.setSize(x, y);
    }

    public static void getruta(String r){
        ruta="";
        ruta = r;
    }
    public void paint(Graphics g) {
        ImageIcon Img = new ImageIcon(getClass().getResource(ruta));
        g.drawImage(Img.getImage(), 0, 0, x, y, null);
        
    }    
}
