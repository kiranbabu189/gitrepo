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
public class special_symbol {
    
    public String symbol(String word)
    {
        try {
            dbclass db=new dbclass();
            Statement st=db.con.createStatement();
            
            ResultSet rs=st.executeQuery("select * from stopspecial");
            
            while(rs.next())
            {
                String s=rs.getString("special_char").trim();
                word=word.replaceAll("\\"+s, " ");
                word=word.replaceAll("\\W"," ");
            }
            String[] str = word.split(" ");
            for(int k = 0 ; k < word.split(" ").length ; k++){
                 System.out.print("AFter special "+str[k]);
            }
        } catch (SQLException ex) {
            Logger.getLogger(stopwords.class.getName()).log(Level.SEVERE, null, ex);
        }
        return word;
    }
}
