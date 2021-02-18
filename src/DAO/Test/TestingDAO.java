package DAO.Test;
import DAO.Services.ServiceProduits;
import DAO.Services.ServiceVote;
import com.beans.produit;
import com.beans.vote;
import java.sql.SQLException;
import java.util.ArrayList;

public class TestingDAO {
     public static void main(String[] args) throws SQLException  {
         
       // ServiceProduits serviceDAO = new ServiceProduits();
       ServiceVote serviceV = new ServiceVote();
       
       produit rec = serviceV.recupererPlusVotes();
       System.out.println(rec.toString());
       
       
       ArrayList<produit> Liste = serviceV.recupereVoteDesProduits();
       
       for(produit p : Liste) {
    	   System.out.println(p.toString());
       }
         
        
        
         //serviceDAO.modifierProduit(1,"SARA", 111, 222);
         //produit p = new produit("Imane", 999, 99);
         //serviceDAO.ajouterProduit(p);
         //serviceDAO.voterProduit(2);
         
         
         
         //le produit qui a le plus nombre du votes
         //vote recupererPlusVotes = servicevote.recupererPlusVotes();
         //System.out.println(recupererPlusVotes.toString());
        
        
         
         
       
        //affcihage
         //ArrayList<produit> listeProduits = serviceDAO.AfficherTout();
         //for(int i = 0 ; i<listeProduits.size();i++){
         //System.out.println(listeProduits.get(i).toString());
         //}
         
         
         //serviceDAO.supprimerProduit(5);

         
         
         //serviceDAO.supprimerProduit(5);

     }  
}
