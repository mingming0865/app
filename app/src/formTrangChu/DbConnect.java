/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package formTrangChu;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author mypc
 */
public class DbConnect {
    
    
    public Connection getConnection(){
        Connection conn=null;
        try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            conn=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=quanlybanxe;","sa","147852");
            if(conn!=null){
                System.out.println("Ket noi thanh cong");
            }
        }catch(Exception e){
            System.out.println(e.toString());
        }
        return conn;
    }
    
}
