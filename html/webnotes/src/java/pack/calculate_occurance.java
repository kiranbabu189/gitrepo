/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author Kiran B
 */
public class calculate_occurance {
    
    public int occurance(String ans,String word)
    {
        int x=0;
        ans = ans.toLowerCase();
        String in = ans;
        int i = 0;
        Pattern p = Pattern.compile(word+" ");
        Matcher m = p.matcher(in);
        while (m.find()) {
            i++;
        }
        
        return i;
    }
    
}
