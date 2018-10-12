/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author admin
 */
public class ConnectionDB {
    public static final String hostName = "localhost";
    public static final String userName = "hai";
    public static final String passWord = "admin";
    public static final String dbName = "motelroomdb";
    public static final String connectionUrl = "jdbc:mysql://" + hostName + ":3306/" + dbName;
    
    public static Connection getConnecttion() {
        Connection cons = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            cons = (Connection) DriverManager.getConnection(
                    connectionUrl, userName, passWord);
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println("Ket noi thanh cong!");
        return cons;
    }

    public void excuteSQL(String sql) throws Exception{
		Connection connect =  getConnecttion();
		Statement stmt = connect.createStatement();
		stmt.executeUpdate(sql);
	}
	public ResultSet getDataFromTable(String sql) throws Exception{
		Connection connect = getConnecttion();
		Statement stmt = connect.createStatement();
		ResultSet rs =stmt.executeQuery(sql);
		return rs;
	}
    
    public static void main(String[] args) {
        Connection conn = ConnectionDB.getConnecttion();
    }
}
