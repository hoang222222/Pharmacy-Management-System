/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pharmacy.management.system;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author HOANG
 */
public class DBProvider {

    public static PreparedStatement add, check, get;
    public static Statement stt = null;
    public static ResultSet rs = null, rs1 = null, rs2 = null;
    public static String url = "jdbc:mysql://localhost:3306/pharmacydb";
    public static String username_db = "root";
    public static String password_db = "";
    public static Connection conn = null;

    public static void getConnect() {
        try {
            conn = DriverManager.getConnection(url, username_db, password_db);
        } catch (SQLException ex) {
            Logger.getLogger(DBProvider.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void excuteUpdate_Delete(String sql) {
        try {
            stt = conn.createStatement();
            stt.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(DBProvider.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public static void excuteSQL(String sql) {
        try {
            stt = conn.createStatement();
            rs = stt.executeQuery(sql);
        } catch (SQLException ex) {
            Logger.getLogger(DBProvider.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public static void closeConnect() {
        try {
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(DBProvider.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void excuteAdd(String sql) {
        try {
            getConnect();
            add = conn.prepareStatement(sql);
        } catch (SQLException ex) {
            Logger.getLogger(DBProvider.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void excuteCheck(String sql) {
        try {
            getConnect();
            check = conn.prepareStatement(sql);
        } catch (SQLException ex) {
            Logger.getLogger(DBProvider.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void excuteGet(String sql) {
        try {
            getConnect();
            get = conn.prepareStatement(sql);
        } catch (SQLException ex) {
            Logger.getLogger(DBProvider.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
