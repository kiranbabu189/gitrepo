/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dbpack;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Kiran B
 */
public class dbclass {
    
    public Connection con=null;
    public dbclass()
    {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost/webnotes", "root", "");
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(dbclass.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
