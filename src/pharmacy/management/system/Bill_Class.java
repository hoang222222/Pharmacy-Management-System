/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pharmacy.management.system;

/**
 *
 * @author HOANG
 */
public class Bill_Class {

    public String billID;
    public String billDate;
    public String cusName;
    public String cusPhone;
    public String medName;
    public String empID;
    public int amount;

    public Bill_Class() {
        
    }
    public void Bill_Class(String billID, String billDate, String cusName, String cusPhone,String medName, int amount, String empID) {
        this.billID = billID;
        this.billDate = billDate;
        this.cusName = cusName;
        this.cusPhone = cusPhone;
        this.medName = medName;
        this.amount = amount;
        this.empID = empID;
    }

    public void setEmpID(String empID) {
        this.empID = empID;
    }

    public String getEmpID() {
        return empID;
    }
    
    public void setCusPhone(String cusPhone) {
        this.cusPhone = cusPhone;
    }

    public String getCusPhone() {
        return cusPhone;
    }
    
    public void setBillDate(String billDate) {
        this.billDate = billDate;
    }

    public void setCusName(String cusName) {
        this.cusName = cusName;
    }
    
    public String getBillDate() {
        return billDate;
    }

    public String getCusName() {
        return cusName;
    }
    
    public String getBillID() {
        return billID;
    }
    public void setBillID(String billID) {
        this.billID = billID;
    }

    public void setMedName(String medName) {
        this.medName = medName;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    

    public String getMedName() {
        return medName;
    }

    public int getAmount() {
        return amount;
    }

}
