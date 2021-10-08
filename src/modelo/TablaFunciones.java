package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.swing.RowFilter;

public class TablaFunciones {

    PreparedStatement ps;
    ResultSet rs;
    Connection con;
    Conexion conectar = new Conexion();
    Tabla t = new Tabla();

  
    

    
    
    public List listarVentas() {
        List<Tabla> datos = new ArrayList<>();
        try {
            con = conectar.getConnection();
            ps = con.prepareStatement("SELECT Suc.nombre AS 'Sucursal', Suc.ciudad, Suc.estado, Ven.nombre AS 'Vendedor', Pro.producto FROM ventas Ve INNER JOIN sucursal Suc ON Suc.idsucursal = Ve.idsucursal INNER JOIN vendedor Ven ON Ven.idvendedor = Ve.idvendedor INNER JOIN producto Pro ON Pro.idproducto = Ve.idproducto ");
            rs = ps.executeQuery();
            while (rs.next()) {
                Tabla tabla = new Tabla();
                tabla.setSucursal(rs.getString(1));
                tabla.setCiudad(rs.getString(2));
                tabla.setEstado(rs.getString(3));
                tabla.setVendedor(rs.getString(4));
                tabla.setProducto(rs.getString(5));
                datos.add(tabla);
            }
        } catch (Exception e) {
        }
        return datos;
    } // ventas carmen sucursal sur   venta sucursal y estado   ,,,  
    
     public List sucursalNorte() {
        List<Tabla> datos = new ArrayList<>();
        try {
            con = conectar.getConnection();
            ps = con.prepareStatement("SELECT Suc.nombre AS 'Sucursal', Suc.ciudad, Suc.estado, Ven.nombre AS 'Vendedor', Pro.producto FROM ventas Ve INNER JOIN sucursal Suc ON Suc.idsucursal = Ve.idsucursal INNER JOIN vendedor Ven ON Ven.idvendedor = Ve.idvendedor INNER JOIN producto Pro ON Pro.idproducto = Ve.idproducto WHERE Suc.nombre = 'NORTE' ");
            rs = ps.executeQuery();
            while (rs.next()) {
                Tabla tabla = new Tabla();
                tabla.setSucursal(rs.getString(1));
                tabla.setCiudad(rs.getString(2));
                tabla.setEstado(rs.getString(3));
                tabla.setVendedor(rs.getString(4));
                tabla.setProducto(rs.getString(5));
                datos.add(tabla);
            }
        } catch (Exception e) {
        }
        return datos;
    }
          public List mostrarSurSonora() {
        List<Tabla> datos = new ArrayList<>();
        try {
            con = conectar.getConnection();
            ps = con.prepareStatement("SELECT Suc.nombre AS 'Sucursal', Suc.ciudad, Suc.estado, Ven.nombre AS 'Vendedor', Pro.producto FROM ventas Ve INNER JOIN sucursal\n" +
" Suc ON Suc.idsucursal = Ve.idsucursal INNER JOIN vendedor Ven ON Ven.idvendedor = Ve.idvendedor INNER JOIN producto \n" +
"Pro ON Pro.idproducto = Ve.idproducto WHERE Suc.nombre = 'SUR' AND Suc.estado = 'Sonora' ");
            rs = ps.executeQuery();
            while (rs.next()) {
                Tabla tabla = new Tabla();
                tabla.setSucursal(rs.getString(1));
                tabla.setCiudad(rs.getString(2));
                tabla.setEstado(rs.getString(3));
                tabla.setVendedor(rs.getString(4));
                tabla.setProducto(rs.getString(5));
                datos.add(tabla);
            }
        } catch (Exception e) {
        }
        return datos;
    }
               public List mostrarNorteMorelos() {
        List<Tabla> datos = new ArrayList<>();
        try {
            con = conectar.getConnection();
            ps = con.prepareStatement(" SELECT Suc.nombre AS 'Sucursal', Suc.ciudad, Suc.estado, Ven.nombre AS 'Vendedor', Pro.producto FROM ventas Ve INNER JOIN sucursal\n" +
" Suc ON Suc.idsucursal = Ve.idsucursal INNER JOIN vendedor Ven ON Ven.idvendedor = Ve.idvendedor INNER JOIN producto \n" +
"Pro ON Pro.idproducto = Ve.idproducto WHERE Suc.nombre = 'NORTE' AND Suc.estado = 'Morelos' ");
            rs = ps.executeQuery();
            while (rs.next()) {
                Tabla tabla = new Tabla();
                tabla.setSucursal(rs.getString(1));
                tabla.setCiudad(rs.getString(2));
                tabla.setEstado(rs.getString(3));
                tabla.setVendedor(rs.getString(4));
                tabla.setProducto(rs.getString(5));
                datos.add(tabla);
            }
        } catch (Exception e) {
        }
        return datos;
    }
               
                              public List mostrarCentroSinaloa() {
        List<Tabla> datos = new ArrayList<>();
        try {
            con = conectar.getConnection();
            ps = con.prepareStatement(" SELECT Suc.nombre AS 'Sucursal', Suc.ciudad, Suc.estado, Ven.nombre AS 'Vendedor', Pro.producto FROM ventas Ve INNER JOIN sucursal\n" +
" Suc ON Suc.idsucursal = Ve.idsucursal INNER JOIN vendedor Ven ON Ven.idvendedor = Ve.idvendedor INNER JOIN producto \n" +
"Pro ON Pro.idproducto = Ve.idproducto WHERE Suc.nombre = 'CENTRO' AND Suc.estado = 'Sinaloa' ");
            rs = ps.executeQuery();
            while (rs.next()) {
                Tabla tabla = new Tabla();
                tabla.setSucursal(rs.getString(1));
                tabla.setCiudad(rs.getString(2));
                tabla.setEstado(rs.getString(3));
                tabla.setVendedor(rs.getString(4));
                tabla.setProducto(rs.getString(5));
                datos.add(tabla);
            }
        } catch (Exception e) {
        }
        return datos;
    }
               
       public List mostrarVentasSonoraRicardo   () {
        List<Tabla> datos = new ArrayList<>();
        try {
            con = conectar.getConnection();
            ps = con.prepareStatement("  SELECT Suc.nombre AS 'Sucursal', Suc.ciudad, Suc.estado, Ven.nombre AS 'Vendedor', Pro.producto FROM ventas Ve INNER JOIN sucursal Suc\n" +
" ON Suc.idsucursal = Ve.idsucursal INNER JOIN vendedor Ven ON Ven.idvendedor = Ve.idvendedor INNER JOIN producto Pro ON Pro.idproducto = Ve.idproducto \n" +
"     WHERE Suc.estado = 'Sonora' AND Ven.idvendedor = '4' ");
            rs = ps.executeQuery();
            while (rs.next()) {
                Tabla tabla = new Tabla();
                tabla.setSucursal(rs.getString(1));
                tabla.setCiudad(rs.getString(2));
                tabla.setEstado(rs.getString(3));
                tabla.setVendedor(rs.getString(4));
                tabla.setProducto(rs.getString(5));
                datos.add(tabla);
            }
        } catch (Exception e) {
        }
        return datos;
    }
                              
                                                   
       public List mostrarVentasMorelosCarmen () {
        List<Tabla> datos = new ArrayList<>();
        try {
            con = conectar.getConnection();
            ps = con.prepareStatement("  SELECT Suc.nombre AS 'Sucursal', Suc.ciudad, Suc.estado, Ven.nombre AS 'Vendedor', Pro.producto FROM ventas Ve INNER JOIN sucursal \n" +
" Suc ON Suc.idsucursal = Ve.idsucursal INNER JOIN vendedor Ven ON Ven.idvendedor = Ve.idvendedor\n" +
" INNER JOIN producto Pro ON Pro.idproducto = Ve.idproducto WHERE Suc.estado = 'Morelos' AND Ven.idvendedor = '1' ");
            rs = ps.executeQuery();
            while (rs.next()) {
                Tabla tabla = new Tabla();
                tabla.setSucursal(rs.getString(1));
                tabla.setCiudad(rs.getString(2));
                tabla.setEstado(rs.getString(3));
                tabla.setVendedor(rs.getString(4));
                tabla.setProducto(rs.getString(5));
                datos.add(tabla);
            }
        } catch (Exception e) {
        }
        return datos;
    }
                                                   
                              
      public List mostrarVentasJaliscoRaul() {
        List<Tabla> datos = new ArrayList<>();
        try {
            con = conectar.getConnection();
            ps = con.prepareStatement(" SELECT Suc.nombre AS 'Sucursal', Suc.ciudad, Suc.estado, Ven.nombre AS 'Vendedor', Pro.producto FROM ventas Ve INNER JOIN sucursal \n" +
"Suc ON Suc.idsucursal = Ve.idsucursal INNER JOIN vendedor Ven ON Ven.idvendedor = Ve.idvendedor INNER JOIN producto Pro ON Pro.idproducto = Ve.idproducto \n" +
" WHERE Suc.estado = 'Jalisco' AND Ven.idvendedor = '3' ");
            rs = ps.executeQuery();
            while (rs.next()) {
                Tabla tabla = new Tabla();
                tabla.setSucursal(rs.getString(1));
                tabla.setCiudad(rs.getString(2));
                tabla.setEstado(rs.getString(3));
                tabla.setVendedor(rs.getString(4));
                tabla.setProducto(rs.getString(5));
                datos.add(tabla);
            }
        } catch (Exception e) {
        }
        return datos;
    }
                                                                        
                                                                        
      public List totalSinaloaSucursalNorte() {
        List<Tabla> datos = new ArrayList<>();
        try {
            con = conectar.getConnection();
            ps = con.prepareStatement("SELECT SUM(precioVenta * cantidad) FROM ventas WHERE idsucursal = '28'");
            rs = ps.executeQuery();
            while (rs.next()) {
                Tabla t = new Tabla();
                t.setVentastotales(rs.getInt(1));
                datos.add(t);
            }
        } catch (Exception e) {
        }
        return datos;
    }
      
        public List totalSurSonora() {
        List<Tabla> datos = new ArrayList<>();
        try {
            con = conectar.getConnection();
            ps = con.prepareStatement("SELECT SUM(precioVenta * cantidad) FROM ventas WHERE idsucursal = '10'");
            rs = ps.executeQuery();
            while (rs.next()) {
                Tabla t = new Tabla();
                t.setVentastotales(rs.getInt(1));
                datos.add(t);
            }
        } catch (Exception e) {
        }
        return datos;
    }
        
                public List totalRicardoSonora  () {
        List<Tabla> datos = new ArrayList<>();
        try {
            con = conectar.getConnection();
            ps = con.prepareStatement("SELECT SUM(precioVenta * cantidad) FROM ventas WHERE idvendedor = '4' AND idsucursal IN ('10','2','27','18')");
            rs = ps.executeQuery();
            while (rs.next()) {
                Tabla t = new Tabla();
                t.setVentastotales(rs.getInt(1));
                datos.add(t);
            }
        } catch (Exception e) {
        }
        return datos;
    }
        
                        public List totalCarmenMorelos() {
        List<Tabla> datos = new ArrayList<>();
        try {
            con = conectar.getConnection();
            ps = con.prepareStatement("SELECT SUM(precioVenta * cantidad) FROM ventas WHERE idvendedor = '1' AND idsucursal IN ('1','9','17','26')");
            rs = ps.executeQuery();
            while (rs.next()) {
                Tabla t = new Tabla();
                t.setVentastotales(rs.getInt(1));
                datos.add(t);
            }
        } catch (Exception e) {
        }
        return datos;
    }
                
            public List totalRaulJalisco() {
        List<Tabla> datos = new ArrayList<>();
        try {
            con = conectar.getConnection();
            ps = con.prepareStatement("SELECT SUM(precioVenta * cantidad) FROM ventas WHERE idvendedor = '3' AND idsucursal IN ('3','11','19','28')");
            rs = ps.executeQuery();
            while (rs.next()) {
                Tabla t = new Tabla();
                t.setVentastotales(rs.getInt(1));
                datos.add(t);
            }
        } catch (Exception e) {
        }
        return datos;
    }                    
                      
                        
        public List totalNorteMorelos() {
        List<Tabla> datos = new ArrayList<>();
        try {
            con = conectar.getConnection();
            ps = con.prepareStatement("SELECT SUM(precioVenta * cantidad) FROM ventas WHERE idsucursal = '1'");
            rs = ps.executeQuery();
            while (rs.next()) {
                Tabla t = new Tabla();
                t.setVentastotales(rs.getInt(1));
                datos.add(t);
            }
        } catch (Exception e) {
        }
        return datos;
    }
        
          public List totalCentroSinaloa() {
        List<Tabla> datos = new ArrayList<>();
        try {
            con = conectar.getConnection();
            ps = con.prepareStatement("SELECT SUM(precioVenta * cantidad) FROM ventas WHERE idsucursal IN ('21', '22')");
            rs = ps.executeQuery();
            while (rs.next()) {
                Tabla t = new Tabla();
                t.setVentastotales(rs.getInt(1));
                datos.add(t);
            }
        } catch (Exception e) {
        }
        return datos;
    }
        public List ventaTotalCarmen() {
        List<Tabla> datos = new ArrayList<>();
        try {
            con = conectar.getConnection();
            ps = con.prepareStatement("SELECT SUM(precioVenta * cantidad)  FROM ventas WHERE idvendedor = '1'");
            rs = ps.executeQuery();
            while (rs.next()) {
                Tabla t = new Tabla();
                t.setVentastotales(rs.getInt(1));
                datos.add(t);
            }
        } catch (Exception e) {
        }
        return datos;
    }
        
        
        public List ventaTotalNorte() {
        List<Tabla> datos = new ArrayList<>();
        try {
            con = conectar.getConnection();
            ps = con.prepareStatement("SELECT SUM(precioVenta * cantidad)  FROM ventas WHERE idsucursal BETWEEN '1' AND '8'");
            rs = ps.executeQuery();
            while (rs.next()) {
                Tabla t = new Tabla();
                t.setVentastotales(rs.getInt(1));
                datos.add(t);
            }
        } catch (Exception e) {
        }
        return datos;
    }
  public List ventaTotalRicardo() { 
        List<Tabla> datos = new ArrayList<>();
        try {
            con = conectar.getConnection();
            ps = con.prepareStatement("SELECT SUM(precioVenta * cantidad)  FROM ventas WHERE idvendedor = '4'");
            rs = ps.executeQuery();
            while (rs.next()) {
                Tabla tabla = new Tabla();
                tabla.setVentastotales(rs.getInt(1));
                datos.add(tabla);
            }
        } catch (Exception e) {
        }
        return datos;
    }
      public List ventaTotaleRosa() {
        List<Tabla> datos = new ArrayList<>();
        try {
            con = conectar.getConnection();
            ps = con.prepareStatement("SELECT SUM(precioVenta * cantidad)  FROM ventas WHERE idvendedor = '3'");
            rs = ps.executeQuery();
            while (rs.next()) {
                Tabla tabla = new Tabla();
                tabla.setVentastotales(rs.getInt(1));
                datos.add(tabla);
            }
        } catch (Exception e) {
        }
        return datos;
    }
            public List ventaTotal() {
        List<Tabla> datos = new ArrayList<>();
        try {
            con = conectar.getConnection();
            ps = con.prepareStatement("SELECT SUM(precioVenta * cantidad)  FROM ventas  ");
            rs = ps.executeQuery();
            while (rs.next()) {
                Tabla t = new Tabla();
                t.setVentastotales(rs.getInt(1));
                datos.add(t);
            }
        } catch (Exception e) {
        }
        return datos;
    }


    
    

    
}
