/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Data;

import Model.America;
import Model.YearMonthCovid;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Ing. Luis Llanos
 */
public class AmericaDAO {
    
     private static final String SQL_Diagram = "select * from americainfected()";
     
     public List<America> listAmerica() throws IllegalAccessException, ClassNotFoundException, InstantiationException {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        America ymc = null;
        List<America> listymc = new ArrayList<>();
        try {
            //Oracle
            //Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();

            //Postgres
            Class.forName("org.postgresql.Driver").newInstance();
            conn = Conexion.getConnection();;
            stmt = conn.prepareStatement(SQL_Diagram);
            rs = stmt.executeQuery();

            while (rs.next()) {
                String country = rs.getString("country");
                int confirmed = rs.getInt("confirmed");
                ymc = new America(country, confirmed);
                listymc.add(ymc);
            }
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } catch (InstantiationException ex) {
            Logger.getLogger(YearDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }

        return listymc;
    }
    
}
