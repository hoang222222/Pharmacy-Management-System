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
    public static String last_id = null;
    public static String insert_id = null;

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

    public static String getLastID(String sql, String colname) {

        try {
            getConnect();
            excuteCheck(sql);
            rs = check.executeQuery();
            if (rs.next()) {
                last_id = rs.getString(colname);
            }
            closeConnect();
        } catch (SQLException ex) {
            Logger.getLogger(DBProvider.class.getName()).log(Level.SEVERE, null, ex);
        }
        return last_id;
    }

    public static String insertID(String type, String sql, String colname) {
        int temp = Integer.valueOf(getLastID(sql, colname).substring(3, 10));
        temp = temp + 1;
        String tmp = String.valueOf(temp);
        int len = 7 - tmp.length();
        switch (len) {
            case 0:
                insert_id = type + temp;
                break;
            case 1:
                insert_id = type + "0" + temp;
                break;
            case 2:
                insert_id = type + "00" + temp;
                break;
            case 3:
                insert_id = type + "000" + temp;
                break;
            case 4:
                insert_id = type + "0000" + temp;
                break;
            case 5:
                insert_id = type + "00000" + temp;
                break;
            case 6:
                insert_id = type + "000000" + temp;
                break;
            default:
                break;
        }
        return insert_id;
    }

//    public static int countId(int n) 
//        getConnect();
//
//    }
}
