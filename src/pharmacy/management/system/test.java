/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pharmacy.management.system;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.logging.Level;
import java.util.logging.Logger;
import static pharmacy.management.system.DBProvider.get;
import static pharmacy.management.system.DBProvider.rs;
/**
 *
 * @author HOANG
 */
public class test {
    public static void main(String[] args) {
        try {
            DBProvider.getConnect();
            java.sql.Timestamp sqlTimestamp;
            String sql = "select BillDate from bill where BillID='BIL0000001'";
            DBProvider.excuteGet(sql);
            rs = get.executeQuery();
            if(rs.next()){
                sqlTimestamp = rs.getTimestamp("BillDate");
                System.out.println(sqlTimestamp);
                String timeStamp2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());
                System.out.println(timeStamp2);
            }           
            DBProvider.closeConnect();
        } catch (SQLException ex) {
            Logger.getLogger(test.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
