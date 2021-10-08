/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.*;
import vista.jdlVista;
import java.util.List;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.DefaultTableModel;
import modelo.Tabla;
import modelo.TablaFunciones;
/**
 *
 * @author Clint
 */
public class mainControler implements ActionListener{
    //  TablaFunciones dao = new TablaFunciones();
    Tabla p = new Tabla();
    DefaultTableModel modelo = new DefaultTableModel();
    


    @Override
    public void actionPerformed(ActionEvent e){
    
        if(e.getSource()== vista.btnIniciar){
            
            Escucha esc = new Escucha(vista);
            esc.inicio();
        }
        
        if (e.getSource()== vista.btnTerminar){
            System.exit(0);
        }

            


   }
  
     private jdlVista vista;
   private Escucha escucha;


   public mainControler(jdlVista vis){
       this.vista = vis;
       vista.btnTerminar.addActionListener(this);
       vista.setVisible(true);
       vista.btnIniciar.addActionListener(this);
       vista.btnTerminar.addActionListener(this);
       
        }
    
   public static void main(String args[]){
       jdlVista vista = new jdlVista(new JFrame(), false );
       
       
       mainControler conMain = new mainControler(vista);
       
   }
   

   
    }
