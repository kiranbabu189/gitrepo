/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Tfidfcls;
import java.util.List;

/**
 *
 * @author Lincy
 */


public class TfIdf {

    /**
     * @param args the command line arguments
     */
    
    public double tfCalculator(String[] totalterms, String termToCheck) {
        double count = 0;  //to count the overall occurrence of the term termToCheck
        for (String s : totalterms) {
            if (s.equalsIgnoreCase(termToCheck)) {
                count++;
            }
        }
        return count / totalterms.length;
    }

    /**
     * Calculates idf of term termToCheck
     * @param allTerms : all the terms of all the documents
     * @param termToCheck
     * @return idf(inverse document frequency) score
     */
    public double idfCalculator(List allTerms, String termToCheck) {
        double count = 0;
        for (Object ss : allTerms) {
            for (String s : (String [])ss) {
                if (s.equalsIgnoreCase(termToCheck)) {
                    count++;
                    break;
                }
            }
        } 
        return 1 + Math.log(allTerms.size() / count);
    }
    

    
}
