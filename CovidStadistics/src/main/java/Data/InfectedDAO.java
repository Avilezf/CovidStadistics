/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Data;

import Model.Infected;
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
public class InfectedDAO {

    private static final String SQL_MAX = "select * from maxinfected()";
    private static final String SQL_MIN = "select * from lessinfected()";

    public List<Infected> maxinfected() throws IllegalAccessException, ClassNotFoundException, InstantiationException {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Infected inf = null;
        List<Infected> listinf = new ArrayList<>();
        try {
            //Oracle
            //Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();

            //Postgres
            Class.forName("org.postgresql.Driver").newInstance();
            conn = Conexion.getConnection();;
            stmt = conn.prepareStatement(SQL_MAX);
            rs = stmt.executeQuery();

            while (rs.next()) {
                String country = rs.getString("country");
                String whoregion = rs.getString("whoregion");
                int total = rs.getInt("total");
                int deaths = rs.getInt("deaths");
                inf = new Infected(country, whoregion, total, deaths);
                listinf.add(inf);
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

        return listinf;
    }
    
    public List<Infected> lessinfected() throws IllegalAccessException, ClassNotFoundException, InstantiationException {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Infected inf = null;
        List<Infected> listinf = new ArrayList<>();
        try {
            //Oracle
            //Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();

            //Postgres
            Class.forName("org.postgresql.Driver").newInstance();
            conn = Conexion.getConnection();;
            stmt = conn.prepareStatement(SQL_MIN);
            rs = stmt.executeQuery();

            while (rs.next()) {
                String country = rs.getString("country");
                String whoregion = rs.getString("whoregion");
                int total = rs.getInt("total");
                int deaths = rs.getInt("deaths");
                inf = new Infected(country, whoregion, total, deaths);
                listinf.add(inf);
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

        return listinf;
    }

}
