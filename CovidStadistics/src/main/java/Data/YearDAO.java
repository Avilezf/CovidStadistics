/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Data;

import Model.YearMonthCovid;
import java.sql.PreparedStatement;
import java.sql.*;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Ing. Luis Llanos
 */
public class YearDAO {

    private static final String SQL_Diagram = "select * from YearMonthWorld()";
    private static final String SQL_Colombia = "select * from colombiainfectedyear()";


    public List<YearMonthCovid> listWorld() throws IllegalAccessException, ClassNotFoundException, InstantiationException {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        YearMonthCovid ymc = null;
        List<YearMonthCovid> listymc = new ArrayList<>();
        try {
            //Oracle
            //Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();

            //Postgres
            Class.forName("org.postgresql.Driver").newInstance();
            conn = Conexion.getConnection();;
            stmt = conn.prepareStatement(SQL_Diagram);
            rs = stmt.executeQuery();

            while (rs.next()) {
                double numMonth = rs.getDouble("months");
                String nameMonth = rs.getString("cmonth");
                int count = rs.getInt("num");
                ymc = new YearMonthCovid(numMonth, nameMonth, count);
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
    
    public List<YearMonthCovid> listColombia() throws IllegalAccessException, ClassNotFoundException, InstantiationException {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        YearMonthCovid ymc = null;
        List<YearMonthCovid> listymc = new ArrayList<>();
        try {
            //Oracle
            //Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();

            //Postgres
            Class.forName("org.postgresql.Driver").newInstance();
            conn = Conexion.getConnection();;
            stmt = conn.prepareStatement(SQL_Colombia);
            rs = stmt.executeQuery();

            while (rs.next()) {
                double numMonth = rs.getDouble("months");
                String nameMonth = rs.getString("cmonth");
                int count = rs.getInt("confirmed");
                int deaths = rs.getInt("deaths");
                ymc = new YearMonthCovid(numMonth, nameMonth, count, deaths);
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
