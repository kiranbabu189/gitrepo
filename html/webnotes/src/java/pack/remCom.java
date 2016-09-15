/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;

/**
 *
 * @author Kiran B
 */
public class remCom {
    
    public String[] removeC(String[] word){
        String[] repeat = new String[2];
        repeat[0] = "java";
        repeat[1] = "io";
        String[] check;
        check = word;
        String[] rword = new String[word.length];
        for(int k = 0 ; k < rword.length ; k++ ){
            for (String repeat1 : repeat) {
                if(rword[k].equals(repeat1)) { 
                    rword[k] = "";
                }
            }
        }
        if(rword.equals("")){
            return word;
        }
        return rword;
    }
    
}
