/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;

import dbpack.dbclass;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Kiran B
 */
public class stopwords {
    
    public String words(String word)
    {
        try {
            dbclass db=new dbclass();
            Statement st=db.con.createStatement();
            
            ResultSet rs=st.executeQuery("select * from stopwords");
            while(rs.next())
            {
                String s = rs.getString("swords").trim();
                word = word.toLowerCase();
                word = word.replaceAll("\\b"+s+"\\b","");
                word = word.replaceAll("\\s+"," ");
//                word = word.trim();
            }
        } catch (SQLException ex) {
            Logger.getLogger(stopwords.class.getName()).log(Level.SEVERE, null, ex);
        }
        return word;
    }
}
