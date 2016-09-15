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
public class trigram {
    
    public String[] word(String word)
    {
         word = word.trim().replaceAll("//+ "," ");
        String[] st=new String[word.split(" ").length/3];
        for(int i=0;i<word.split(" ").length/3;i++)
        {
            st[i]=word.split(" ")[i]+" "+word.split(" ")[i+1]+" "+word.split(" ")[i+2];
            System.out.println("trigram words : "+st[i]);
        }
        return st;
    }
    
}
