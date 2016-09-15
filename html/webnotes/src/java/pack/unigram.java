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
public class unigram {
    
    public String[] word(String word)
    {
        String[] str=word.split(" ");
//        String[] clean = new String[str.length-1];
//        int w = 0;
//        for(int i=0;i<str.length;i++){
//            if(str[i] != null && !str[i].equals("") ){ 
//                clean[w] = str[i];
//                w++;
//            }
//        }
//            for(int j=0;j<clean.length;j++)
//                System.out.println("unigram words : "+clean[j]);
        
        return str;      
    }
}
