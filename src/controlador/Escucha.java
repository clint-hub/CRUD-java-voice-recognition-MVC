/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.FileReader;
import java.util.Locale;
import javax.speech.Central;
import javax.speech.EngineModeDesc;
import javax.speech.recognition.Recognizer;
import javax.speech.recognition.Result;
import javax.speech.recognition.ResultAdapter;
import javax.speech.recognition.ResultEvent;
import javax.speech.recognition.ResultToken;
import javax.speech.recognition.RuleGrammar;
import vista.jdlVista;
import java.awt.Color;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.RowFilter;
import javax.swing.SwingConstants;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableRowSorter;
import modelo.Conexion;
import modelo.Tabla;
import modelo.TablaFunciones;
import java.sql.Connection;
import javax.swing.JOptionPane;
import java.sql.*;

/**
 *
 * @author Clint
 */


public class Escucha extends ResultAdapter{
    
    jdlVista vista;
    Recognizer recognizer;
    String gst;
    TablaFunciones fun = new TablaFunciones();
    Tabla p = new Tabla();
    DefaultTableModel modelo = new DefaultTableModel();
    TableRowSorter trs;
    PreparedStatement ps;
    ResultSet rs;
    Connection con;
    Conexion conectar = new Conexion();
    
    
    public Escucha( jdlVista vista){
        this.vista = vista;
       this.inicio();
    }
   @Override
 public void resultAccepted(ResultEvent re)
 {
     

     
     

         
         
         
 try
 {
 Result res = (Result)(re.getSource());
 ResultToken tokens[] = res.getBestTokens();
 
 String args[]= new String[1];
 args[0]="";
 for (int i=0; i < tokens.length; i++)
 {
 
    args[0]=""; 
     gst = tokens[i].getSpokenText();
 args[0]=gst+" ";
 vista.txtPalabra2.setText(gst+"" );
 System.out.println(gst +"");
 }
 
// System.out.println();
     switch (gst) {
         case "Salir":
             recognizer.deallocate();
             args[0]="Adios";
             System.out.println(args[0]);
             
             System.exit(0);
         case "Mostrar_Ventas":
             recognizer.suspend();
            System.out.println(args[0]);
             vista.txtPalabra2.requestFocus();
             limpiarTabla();
             listarVentas(vista.jtVentas);
             vista.txtPalabra2.setText("Mostrar Ventas");
            
             recognizer.resume();
           
              
             break;
               case "Ventas_sucursal_sur_sonora":
             recognizer.suspend();
            System.out.println(args[0]);
             vista.txtPalabra2.requestFocus();
             limpiarTabla();
             this.mostrarSurSonora(vista.jtVentas);
             vista.txtPalabra2.setText("Ventas Sucursal sur Sonora");
             vista.lbSeccion.setText("Segunda Seccion");
             vista.lbInciso.setText("Mostrar las ventas de la sucursal sur de estado de Sonora");
             recognizer.resume();
           
              
             break;
             case "Ventas_morelos_sucursal_norte":
             recognizer.suspend();
            System.out.println(args[0]);
             vista.txtPalabra2.requestFocus();
             limpiarTabla();
             this.mostrarNorteMorelos(vista.jtVentas);
             vista.txtPalabra2.setText("Ventas Sucursal norte Morelos");
            vista.lbSeccion.setText("Segunda Seccion");
             vista.lbInciso.setText("Mostrar las ventas de la sucursal Norte de estado de Morelos");
             recognizer.resume();
           
              
             break;
             
               case "Ventas_sucursal_centro_sinaloa":
             recognizer.suspend();
            System.out.println(args[0]);
             vista.txtPalabra2.requestFocus();
             limpiarTabla();
             this.mostrarCentroSinaloa(vista.jtVentas);
             vista.txtPalabra2.setText("Ventas Sucursal centro Sinaloa");
            vista.lbSeccion.setText("Segunda Seccion");
             vista.lbInciso.setText("Mostrar las ventas de la sucursal Centro de estado de Sinaloa");
             recognizer.resume();
           
              
             break;
             
              case "Ventas_sonora_ricardo":
             recognizer.suspend();
            System.out.println(args[0]);
             vista.txtPalabra2.requestFocus();
             limpiarTabla();
             this.mostrarVentasSonoraRicardo(vista.jtVentas);
             vista.txtPalabra2.setText("Ventas de ricardo en Sonora");
             vista.lbSeccion.setText("Tercera Seccion");
             vista.lbInciso.setText("Mostrar las ventas del vendedor Ricardo en estado de Sonora");
             recognizer.resume();
           
              
             break;
             
              case "Morelos_ventas_de_carmen":
             recognizer.suspend();
            System.out.println(args[0]);
             vista.txtPalabra2.requestFocus();
             limpiarTabla();
             this.mostrarVentasMorelosCarmen(vista.jtVentas);
             vista.txtPalabra2.setText("Ventas de carmen en Morelos");
                vista.lbSeccion.setText("Tercera Seccion");
             vista.lbInciso.setText("Mostrar las ventas del vendedor Carmen en estado de Morelos");
             recognizer.resume();
           
              
             break;
             
              case "Jalisco_Raul":
             recognizer.suspend();
            System.out.println(args[0]);
             vista.txtPalabra2.requestFocus();
             limpiarTabla();
             this.mostrarVentasJaliscoRaul(vista.jtVentas);
             vista.txtPalabra2.setText("Ventas de Raul en Jalisco");
                 vista.lbSeccion.setText("Tercera Seccion");
             vista.lbInciso.setText("Mostrar las ventas del vendedor Raul en estado de Jalisco");
             recognizer.resume();
           
              
             break;
             
             
              //case "Total_de_ventas":
             //recognizer.suspend();
            //System.out.println(args[0]);
             //vista.txtPalabra2.requestFocus();
             //vista.txtPalabra2.setText("Total de ventas");
             //vista.lbTotal.setText("Todas las Ventas");
            
             //limpiarTablaTotal();
             //this.ventaTotal(vista.jtTotal);
             //recognizer.resume();
           
             
             //break;
         case "Ventas_Carmen":
             recognizer.suspend();
             System.out.println(args[0]);
            
             vista.txtPalabra2.requestFocus();
             vista.txtPalabra2.setText("Total de ventas de carmen");
             vista.lbSeccion.setText("Primera Seccion");
             vista.lbInciso.setText("Mostrar el total de ventas de Carmen");
           
           //  vista.txtPalabra2.setText("SKIN FROST: ECLIPSE");
             limpiarTablaTotal();
         this.ventaTotalCarmen(vista.jtTotal);
         
         recognizer.resume(); 
             break;
             
            case "Carmen":
             recognizer.suspend();
             System.out.println(args[0]);
             vista.lbSeccion.setText("Primera Seccion");
             vista.lbInciso.setText("Mostrar las ventas de Carmen");
             vista.txtPalabra2.requestFocus();
             

     
           //  vista.txtPalabra2.setText("SKIN FROST: ECLIPSE"
         
         recognizer.resume(); 
            
         
         
         
         break;
                 case "Raul":
             recognizer.suspend();
             System.out.println(args[0]);
            
             vista.txtPalabra2.requestFocus();
              vista.lbSeccion.setText("Primera Seccion");
             vista.lbInciso.setText("Mostrar las ventas de Raul");

     
           //  vista.txtPalabra2.setText("SKIN FROST: ECLIPSE"
         
         recognizer.resume(); 
            
         
         
         
         break; 
             
         
           case "Ricardo":
             recognizer.suspend();
             System.out.println(args[0]);
            
             vista.txtPalabra2.requestFocus();
               vista.lbSeccion.setText("Primera Seccion");
             vista.lbInciso.setText("Mostrar las ventas de Ricardo");

     
           //  vista.txtPalabra2.setText("SKIN FROST: ECLIPSE"
         
         recognizer.resume(); 
            
         
         
         
         break; 
         
         case "Ventas_Raul":
             recognizer.suspend();
             System.out.println(args[0]);
             vista.txtPalabra2.requestFocus();
           vista.txtPalabra2.setText("Venta total de Raul");
            // vista.txtTotal.setText("Raul");
            vista.lbSeccion.setText("Primera Seccion");
             vista.lbInciso.setText("Mostrar el total de ventas de Raul");
           
           
             limpiarTablaTotal();
              this.ventaTotalRosa(vista.jtTotal);
             recognizer.resume();
             break;
            
            
         case "Ventas_Ricardo":
             recognizer.suspend();
             System.out.println(args[0]);
            
             vista.txtPalabra2.requestFocus();
                vista.lbSeccion.setText("Primera Seccion");
             vista.lbInciso.setText("Mostrar el total de ventas de Ricardo");
             vista.txtPalabra2.setText("Venta total de Ricardo");
           //  vista.txtPalabra2.setText("SKIN FROST: ECLIPSE");
             limpiarTablaTotal();
         this.ventaTotalRicardo(vista.jtTotal);
         
         recognizer.resume();
         
             break;
             
              case "Total_sinaloa_norte":
             recognizer.suspend();
             System.out.println(args[0]);
            
             vista.txtPalabra2.requestFocus();
               
             vista.txtPalabra2.setText("Total Sinaloa Sucursal Norte");
           //  vista.txtPalabra2.setText("SKIN FROST: ECLIPSE");
             limpiarTablaTotal();
         this.totalSinaloaSucursalNorte(vista.jtTotal);
         
         recognizer.resume();
          break;
          
           case "Total_ventas_sur_sonora":
             recognizer.suspend();
             System.out.println(args[0]);
            
             vista.txtPalabra2.requestFocus();
                vista.lbSeccion.setText("Segunda Seccion");
             vista.lbInciso.setText("Total de ventas de la sucursal sur de estado de Sonora");
             vista.txtPalabra2.setText("Total Sonora Sucursal Sur");
           //  vista.txtPalabra2.setText("SKIN FROST: ECLIPSE");
             limpiarTablaTotal();
         this.totalSurSonora(vista.jtTotal);
         
         recognizer.resume();
          break;
          
          case "Total_ventas_norte_morelos":
             recognizer.suspend();
             System.out.println(args[0]);
            
             vista.txtPalabra2.requestFocus();
               vista.lbSeccion.setText("Segunda Seccion");
             vista.lbInciso.setText("Total de ventas de la sucursal Norte de estado de Morelos (Cuernavaca)");
             vista.txtPalabra2.setText("Total Morelos Sucursal Norte");
           //  vista.txtPalabra2.setText("SKIN FROST: ECLIPSE");
             limpiarTablaTotal();
         this.totalNorteMorelos(vista.jtTotal);
         
         recognizer.resume();
          break;
                
          case "Total_ventas_centro_sinaloa":
             recognizer.suspend();
             System.out.println(args[0]);
            
             vista.txtPalabra2.requestFocus();
               vista.lbSeccion.setText("Segunda Seccion");
             vista.lbInciso.setText("Total de ventas de la sucursal Centro de estado de Sinaloa");
             vista.txtPalabra2.setText("Total Sinaloa Sucursal Centro");
           //  vista.txtPalabra2.setText("SKIN FROST: ECLIPSE");
             limpiarTablaTotal();
         this.totalCentroSinaloa(vista.jtTotal);
         
         recognizer.resume();
          break;
          
          case "Sonora_total_ventas_ricardo":
             recognizer.suspend();
             System.out.println(args[0]);
            
             vista.txtPalabra2.requestFocus();
               
             vista.txtPalabra2.setText("Total de Ricardo en Sonora");
           //  vista.txtPalabra2.setText("SKIN FROST: ECLIPSE");
             limpiarTablaTotal();
         this.totalRicardoSonora(vista.jtTotal);
         vista.lbSeccion.setText("Tercera Seccion");
             vista.lbInciso.setText("Mostrar el total de ventas del vendedor Ricardo del estado de Sonora");
         recognizer.resume();
          break;
          
          case "Total_carmen_Morelos":
             recognizer.suspend();
             System.out.println(args[0]);
            
             vista.txtPalabra2.requestFocus();
               
             vista.txtPalabra2.setText("Total de Carmen en Morelos");
           //  vista.txtPalabra2.setText("SKIN FROST: ECLIPSE");
             limpiarTablaTotal();
         this.totalCarmenMorelos(vista.jtTotal);
          vista.lbSeccion.setText("Tercera Seccion");
             vista.lbInciso.setText("Mostrar el total de ventas del vendedor Carmen del estado de Morelos");
         recognizer.resume();
          break;
          
          case "Total_raul_jalisco":
             recognizer.suspend();
             System.out.println(args[0]);
            
             vista.txtPalabra2.requestFocus();
               
             vista.txtPalabra2.setText("Total de Raul en Jalisco");
           //  vista.txtPalabra2.setText("SKIN FROST: ECLIPSE");
             limpiarTablaTotal();
         this.totalRaulJalisco(vista.jtTotal);
          vista.lbSeccion.setText("Tercera Seccion");
             vista.lbInciso.setText("Mostrar el total de ventas del vendedor Raul del estado de Jalisco");
         recognizer.resume();
          break;
          
          
          
     case "Total_ventas_norte":
             recognizer.suspend();
             System.out.println(args[0]);
            
             vista.txtPalabra2.requestFocus();
               
             vista.txtPalabra2.setText("Total sucursal Norte");
           //  vista.txtPalabra2.setText("SKIN FROST: ECLIPSE");
             limpiarTablaTotal();
         this.totalSucursalNorte(vista.jtTotal);
         
         recognizer.resume();
          break;
            
         case "Limpiar":
             recognizer.suspend();
             this.limpiarTabla();
           
            vista.txtPalabra2.setText("Limpiar");
             recognizer.resume();
             break;
         default:
             recognizer.suspend();
             recognizer.resume();
             break;
     }
 }catch(Exception ex)
 {
 System.out.println("Ha ocurrido algo inesperado " + ex);
 }
     
     
     
     
     
   
 }
 
 

 public void inicio(){
     
   try
 {
 recognizer = Central.createRecognizer(new EngineModeDesc(Locale.ROOT));
 recognizer.allocate();
 
 FileReader grammar1 =new FileReader("librerias/diccionario.txt");
 
 RuleGrammar rg = recognizer.loadJSGF(grammar1);
 rg.setEnabled(true); 
 
 recognizer.addResultListener(this);
 
 vista.txtPalabra2.setText("Iniciando...");
 recognizer.commitChanges();

 recognizer.requestFocus();
 recognizer.resume();
 }
   
    catch (Exception e){
        
        
        System.out.println("Exception en " + e.toString());
        e.printStackTrace();
        System.exit(0);
     }
 }
        
        public void listarVentas(JTable tabla) {
        centrarCeldas(tabla);
        modelo = (DefaultTableModel) tabla.getModel();
        tabla.setModel(modelo);
        List<Tabla> lista = fun.listarVentas();
        Object[] objeto = new Object[9];
        
        for (int i = 0; i < lista.size(); i++) {
            objeto[0] = lista.get(i).getSucursal();
            objeto[1] = lista.get(i).getCiudad();
            objeto[2] = lista.get(i).getEstado();
            objeto[3] = lista.get(i).getVendedor();
            objeto[4] = lista.get(i).getProducto();
            modelo.addRow(objeto);
        }
            tabla.setRowHeight(35);
            tabla.setRowMargin(10);

    }
        
        public void mostrarVentasSonoraRicardo   (JTable tabla) {
        centrarCeldas(tabla);
        modelo = (DefaultTableModel) tabla.getModel();
        tabla.setModel(modelo);
        List<Tabla> lista = fun.mostrarVentasSonoraRicardo();
        Object[] objeto = new Object[9];
        
        for (int i = 0; i < lista.size(); i++) {
            objeto[0] = lista.get(i).getSucursal();
            objeto[1] = lista.get(i).getCiudad();
            objeto[2] = lista.get(i).getEstado();
            objeto[3] = lista.get(i).getVendedor();
            objeto[4] = lista.get(i).getProducto();
            modelo.addRow(objeto);
        }
            tabla.setRowHeight(35);
            tabla.setRowMargin(10);

    }
        
        
        public void mostrarVentasMorelosCarmen(JTable tabla) {
        centrarCeldas(tabla);
        modelo = (DefaultTableModel) tabla.getModel();
        tabla.setModel(modelo);
        List<Tabla> lista = fun.mostrarVentasMorelosCarmen();
        Object[] objeto = new Object[9];
        
        for (int i = 0; i < lista.size(); i++) {
            objeto[0] = lista.get(i).getSucursal();
            objeto[1] = lista.get(i).getCiudad();
            objeto[2] = lista.get(i).getEstado();
            objeto[3] = lista.get(i).getVendedor();
            objeto[4] = lista.get(i).getProducto();
            modelo.addRow(objeto);
        }
            tabla.setRowHeight(35);
            tabla.setRowMargin(10);

    }
        
        
        
        public void mostrarVentasJaliscoRaul(JTable tabla) {
        centrarCeldas(tabla);
        modelo = (DefaultTableModel) tabla.getModel();
        tabla.setModel(modelo);
        List<Tabla> lista = fun.mostrarVentasJaliscoRaul();
        Object[] objeto = new Object[9];
        
        for (int i = 0; i < lista.size(); i++) {
            objeto[0] = lista.get(i).getSucursal();
            objeto[1] = lista.get(i).getCiudad();
            objeto[2] = lista.get(i).getEstado();
            objeto[3] = lista.get(i).getVendedor();
            objeto[4] = lista.get(i).getProducto();
            modelo.addRow(objeto);
        }
            tabla.setRowHeight(35);
            tabla.setRowMargin(10);

    }
        
        
         public void sucursalNorte(JTable tabla) {
        centrarCeldas(tabla);
        modelo = (DefaultTableModel) tabla.getModel();
        tabla.setModel(modelo);
        List<Tabla> lista = fun.sucursalNorte();
        Object[] objeto = new Object[9];
        
        for (int i = 0; i < lista.size(); i++) {
            objeto[0] = lista.get(i).getSucursal();
            objeto[1] = lista.get(i).getCiudad();
            objeto[2] = lista.get(i).getEstado();
            objeto[3] = lista.get(i).getVendedor();
            objeto[4] = lista.get(i).getProducto();
            modelo.addRow(objeto);
        }
            tabla.setRowHeight(35);
            tabla.setRowMargin(10);

    }
       
        public void mostrarSurSonora(JTable tabla) {
        centrarCeldas(tabla);
        modelo = (DefaultTableModel) tabla.getModel();
        tabla.setModel(modelo);
        List<Tabla> lista = fun.mostrarSurSonora();
        Object[] objeto = new Object[9];
        
        for (int i = 0; i < lista.size(); i++) {
            objeto[0] = lista.get(i).getSucursal();
            objeto[1] = lista.get(i).getCiudad();
            objeto[2] = lista.get(i).getEstado();
            objeto[3] = lista.get(i).getVendedor();
            objeto[4] = lista.get(i).getProducto();
            modelo.addRow(objeto);
        }
            tabla.setRowHeight(35);
            tabla.setRowMargin(10);

    }
               public void mostrarNorteMorelos(JTable tabla) {
        centrarCeldas(tabla);
        modelo = (DefaultTableModel) tabla.getModel();
        tabla.setModel(modelo);
        List<Tabla> lista = fun.mostrarNorteMorelos();
        Object[] objeto = new Object[9];
        
        for (int i = 0; i < lista.size(); i++) {
            objeto[0] = lista.get(i).getSucursal();
            objeto[1] = lista.get(i).getCiudad();
            objeto[2] = lista.get(i).getEstado();
            objeto[3] = lista.get(i).getVendedor();
            objeto[4] = lista.get(i).getProducto();
            modelo.addRow(objeto);
        }
            tabla.setRowHeight(35);
            tabla.setRowMargin(10);

    }
            
                  public void mostrarCentroSinaloa(JTable tabla) {
        centrarCeldas(tabla);
        modelo = (DefaultTableModel) tabla.getModel();
        tabla.setModel(modelo);
        List<Tabla> lista = fun.mostrarCentroSinaloa();
        Object[] objeto = new Object[9];
        
        for (int i = 0; i < lista.size(); i++) {
            objeto[0] = lista.get(i).getSucursal();
            objeto[1] = lista.get(i).getCiudad();
            objeto[2] = lista.get(i).getEstado();
            objeto[3] = lista.get(i).getVendedor();
            objeto[4] = lista.get(i).getProducto();
            modelo.addRow(objeto);
        }
            tabla.setRowHeight(35);
            tabla.setRowMargin(10);

    }
               
        public void ventaTotalCarmen(JTable tabla) {
            centrarCeldasVentasTotales(tabla);
        modelo = (DefaultTableModel) tabla.getModel();
        tabla.setModel(modelo);
        List<Tabla> lista = fun.ventaTotalCarmen();
        Object[] objeto = new Object[9];
        
        for (int i = 0; i < lista.size(); i++) {
            objeto[0] = lista.get(i).getVentastotales();
            modelo.addRow(objeto);
        }
            tabla.setRowHeight(35);
            tabla.setRowMargin(10);

    }
     
            public void totalRicardoSonora (JTable tabla) {
            centrarCeldasVentasTotales(tabla);
        modelo = (DefaultTableModel) tabla.getModel();
        tabla.setModel(modelo);
        List<Tabla> lista = fun.totalRicardoSonora();
        Object[] objeto = new Object[9];
        
        for (int i = 0; i < lista.size(); i++) {
            objeto[0] = lista.get(i).getVentastotales();
            modelo.addRow(objeto);
        }
            tabla.setRowHeight(35);
            tabla.setRowMargin(10);

    }
        
        
                public void totalCarmenMorelos(JTable tabla) {
            centrarCeldasVentasTotales(tabla);
        modelo = (DefaultTableModel) tabla.getModel();
        tabla.setModel(modelo);
        List<Tabla> lista = fun.totalCarmenMorelos();
        Object[] objeto = new Object[9];
        
        for (int i = 0; i < lista.size(); i++) {
            objeto[0] = lista.get(i).getVentastotales();
            modelo.addRow(objeto);
        }
            tabla.setRowHeight(35);
            tabla.setRowMargin(10);

    }
            
                public void totalRaulJalisco(JTable tabla) {
            centrarCeldasVentasTotales(tabla);
        modelo = (DefaultTableModel) tabla.getModel();
        tabla.setModel(modelo);
        List<Tabla> lista = fun.totalRaulJalisco();
        Object[] objeto = new Object[9];
        
        for (int i = 0; i < lista.size(); i++) {
            objeto[0] = lista.get(i).getVentastotales();
            modelo.addRow(objeto);
        }
            tabla.setRowHeight(35);
            tabla.setRowMargin(10);

    }
                
                
         public void totalSinaloaSucursalNorte(JTable tabla) {
            centrarCeldasVentasTotales(tabla);
        modelo = (DefaultTableModel) tabla.getModel();
        tabla.setModel(modelo);
        List<Tabla> lista = fun.totalSinaloaSucursalNorte();
        Object[] objeto = new Object[9];
        
        for (int i = 0; i < lista.size(); i++) {
            objeto[0] = lista.get(i).getVentastotales();
            modelo.addRow(objeto);
        }
            tabla.setRowHeight(35);
            tabla.setRowMargin(10);

    }
                  public void totalSurSonora (JTable tabla) {
            centrarCeldasVentasTotales(tabla);
        modelo = (DefaultTableModel) tabla.getModel();
        tabla.setModel(modelo);
        List<Tabla> lista = fun.totalSurSonora();
        Object[] objeto = new Object[9];
        
        for (int i = 0; i < lista.size(); i++) {
            objeto[0] = lista.get(i).getVentastotales();
            modelo.addRow(objeto);
        }
            tabla.setRowHeight(35);
            tabla.setRowMargin(10);

    }
                  
                         public void totalNorteMorelos (JTable tabla) {
            centrarCeldasVentasTotales(tabla);
        modelo = (DefaultTableModel) tabla.getModel();
        tabla.setModel(modelo);
        List<Tabla> lista = fun.totalNorteMorelos();
        Object[] objeto = new Object[9];
        
        for (int i = 0; i < lista.size(); i++) {
            objeto[0] = lista.get(i).getVentastotales();
            modelo.addRow(objeto);
        }
            tabla.setRowHeight(35);
            tabla.setRowMargin(10);

    }
                  
                                public void totalCentroSinaloa (JTable tabla) {
            centrarCeldasVentasTotales(tabla);
        modelo = (DefaultTableModel) tabla.getModel();
        tabla.setModel(modelo);
        List<Tabla> lista = fun.totalCentroSinaloa();
        Object[] objeto = new Object[9];
        
        for (int i = 0; i < lista.size(); i++) {
            objeto[0] = lista.get(i).getVentastotales();
            modelo.addRow(objeto);
        }
            tabla.setRowHeight(35);
            tabla.setRowMargin(10);

    }
                         
                         
                  public void totalSucursalNorte(JTable tabla) {
            centrarCeldasVentasTotales(tabla);
        modelo = (DefaultTableModel) tabla.getModel();
        tabla.setModel(modelo);
        List<Tabla> lista = fun.ventaTotalNorte();
        Object[] objeto = new Object[9];
        
        for (int i = 0; i < lista.size(); i++) {
            objeto[0] = lista.get(i).getVentastotales();
            modelo.addRow(objeto);
        }
            tabla.setRowHeight(35);
            tabla.setRowMargin(10);

    }
         
        public void ventaTotalRicardo(JTable tabla) {
            centrarCeldasVentasTotales(tabla);
        modelo = (DefaultTableModel) tabla.getModel();
        tabla.setModel(modelo);
        List<Tabla> lista = fun.ventaTotalRicardo();
        Object[] objeto = new Object[9];
        
        for (int i = 0; i < lista.size(); i++) {
            objeto[0] = lista.get(i).getVentastotales();
            modelo.addRow(objeto);
        }
            tabla.setRowHeight(35);
            tabla.setRowMargin(10);

    }
        public void ventaTotalRosa(JTable tabla) {
            centrarCeldasVentasTotales(tabla);
        modelo = (DefaultTableModel) tabla.getModel();
        tabla.setModel(modelo);
        List<Tabla> lista = fun.ventaTotaleRosa();
        Object[] objeto = new Object[9];
        
        for (int i = 0; i < lista.size(); i++) {
            objeto[0] = lista.get(i).getVentastotales();
            modelo.addRow(objeto);
        }
            tabla.setRowHeight(35);
            tabla.setRowMargin(10);

    }
   public void ventaTotal(JTable tabla) {
            centrarCeldasVentasTotales(tabla);
        modelo = (DefaultTableModel) tabla.getModel();
        tabla.setModel(modelo);
        List<Tabla> lista = fun.ventaTotal();
        Object[] objeto = new Object[9];
        
        for (int i = 0; i < lista.size(); i++) {
            objeto[0] = lista.get(i).getVentastotales();
            modelo.addRow(objeto);
        }
            tabla.setRowHeight(35);
            tabla.setRowMargin(10);

    }
  
      
        
       
    void centrarCeldas(JTable tabla) {
        DefaultTableCellRenderer tcr = new DefaultTableCellRenderer();
        tcr.setHorizontalAlignment(SwingConstants.CENTER);
        for (int i = 0; i < vista.jtVentas.getColumnCount(); i++) {
            tabla.getColumnModel().getColumn(i).setCellRenderer(tcr);
        }
    }
        void centrarCeldasVentasTotales(JTable tabla) {
        DefaultTableCellRenderer tcr = new DefaultTableCellRenderer();
        tcr.setHorizontalAlignment(SwingConstants.CENTER);
        for (int i = 0; i < vista.jtTotal.getColumnCount(); i++) {
            tabla.getColumnModel().getColumn(i).setCellRenderer(tcr);
        }
    }
    void limpiarTablaTotal() {
        for (int i = 0; i < vista.jtTotal.getRowCount(); i++) {
            modelo.removeRow(i);
            i = i - 1;
        }
    }
    void limpiarTabla() {
        for (int i = 0; i < vista.jtVentas.getRowCount(); i++) {
            modelo.removeRow(i);
            i = i - 1;
        }
     
     
    }
    
    void realizarfiltro(){
                    
        vista.txtPalabra2.addActionListener(new ActionListener() {
                public void actionPerformed(ActionEvent arg0){
                    String cadena = (vista.txtPalabra2.getText());
                    vista.txtPalabra2.setText(cadena);
                    filtroestado();
                }
                
            });
            trs = new TableRowSorter(vista.jtVentas.getModel());
            vista.jtVentas.setRowSorter(trs);
            
    }
    
  
         
    
    public void filtroestado(){
    int ColumntaTable = 0;
    trs.setRowFilter(RowFilter.regexFilter(vista.txtPalabra2.getText(), ColumntaTable));
    
    }
    


    
}
