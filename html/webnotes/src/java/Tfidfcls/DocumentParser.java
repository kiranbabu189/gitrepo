/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Tfidfcls;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


/**
 *
 * @author Lincy
 */
public class DocumentParser {
    double cs=0.0;
    //This variable will hold all terms of each document in an array.
    private List termsDocsArray = new ArrayList<>();
    private List<String> allTerms = new ArrayList<>(); //to hold all terms
    private List tfidfDocsVector = new ArrayList<>();

    /**
     * Method to read files and store in array.
     * @param filePath : source file path
     * @throws FileNotFoundException
     * @throws IOException
     */
    public void parseFiles(String filePath) throws FileNotFoundException, IOException {
        File[] allfiles = new File(filePath).listFiles();
        BufferedReader in = null;
        for (File f : allfiles) {
            if (f.getName().endsWith(".txt")) {
                in = new BufferedReader(new FileReader(f));
                StringBuilder sb = new StringBuilder();
                String s = null;
                while ((s = in.readLine()) != null) {
                    sb.append(s);
                }
                String[] tokenizedTerms = sb.toString().replaceAll("[\\W&&[^\\s]]", "").split("\\W+");   //to get individual terms
                for (String term : tokenizedTerms) {
                    if (!allTerms.contains(term)) {  //avoid duplicate entry
                        allTerms.add(term);
                    }
                }
                termsDocsArray.add(tokenizedTerms);
            }
        }

    }

    /**
     * Method to create termVector according to its tfidf score.
     */
    public void tfIdfCalculator() {
        double tf; //term frequency
        double idf; //inverse document frequency
        double tfidf; //term requency inverse document frequency        
        for (Object docTermsArray : termsDocsArray) {
            double[] tfidfvectors = new double[allTerms.size()];
            int count = 0;
            for (String terms : allTerms) {
                
                tf = new TfIdf().tfCalculator((String [])docTermsArray, terms);
                idf = new TfIdf().idfCalculator(termsDocsArray, terms);
                tfidf = tf * idf;
                tfidfvectors[count] = tfidf;
                System.out.print("TERM " +terms+" \n   SCORE  "+tfidfvectors[count]);
                count++;
                
            }
           // for(double t:tfidfvectors)
           // System.out.println("Tfidf:"+t);
            tfidfDocsVector.add(tfidfvectors);  //storing document vectors;            
        }
    }

    /**
     * Method to calculate cosine similarity between all the documents.
     * @return 
     */
    public double[][] getCosineSimilarity() {
        double[][] kcs=new double[tfidfDocsVector.size()][tfidfDocsVector.size()];
        for (int i = 0; i < tfidfDocsVector.size(); i++) {
            for (int j = 0; j < tfidfDocsVector.size(); j++) {
//             System.out.println("between " + i + " and " + j + "  =  "+ new CosineSimilarity().cosineSimilarity((double [])tfidfDocsVector.get(i),(double [])tfidfDocsVector.get(j)));
             cs= new CosineSimilarity().cosineSimilarity((double [])tfidfDocsVector.get(i),(double [])tfidfDocsVector.get(j));  
            kcs[i][j]=cs;
            }
            
        }
        return kcs;
    }
}
    
