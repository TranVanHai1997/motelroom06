/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import data.ConnectionDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author admin
 */
public class UserDAO {
    
    public boolean checkEmail(String email){
        Connection conn = ConnectionDB.getConnecttion();
        String sql = "SELECT * FROM user WHERE user_email = '"+ email +"'";
        PreparedStatement ps;
        try {
            ps = conn.prepareCall(sql);
            ResultSet result = ps.executeQuery();
            
            while (result.next()) {
               conn.close();
               return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
}
