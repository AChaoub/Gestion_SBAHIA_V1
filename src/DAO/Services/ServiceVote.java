package DAO.Services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.beans.produit;


import ConnectionDB.Singleton;
import DAO.Interface.interfaceVoteDAO;

public class ServiceVote implements interfaceVoteDAO {

	

	 @Override
	    public produit recupererPlusVotes() throws SQLException {
		   ServiceProduits serviceP = new ServiceProduits();
	       produit produitPlusVote = null;
 	       Connection connection = Singleton.getConnection();
	       
	       try {
	           String requette = "SELECT  \"id_Produit\" ,Count(\"id_Produit\")as nombre_vote FROM public.\"Vote\" Group By \"id_Produit\";";
	           PreparedStatement s = connection.prepareStatement(requette);
	           ResultSet re = s.executeQuery();
	           
	           int max = 0;

	           while (re.next()) {
	        	   if(re.getInt(2) > max) {
	        		   max  = re.getInt(2);
	        		   produitPlusVote = serviceP.recupererProduitParID(re.getInt(1)) ;   
	        		   //produitPlusVote.setVote(re.getInt(2));
	        	   }  
	           }
	           s.close();
	       } catch (SQLException e) {
	           e.printStackTrace();
	       }
	        return produitPlusVote;
	    }

	@Override
		public ArrayList<produit> recupereVoteDesProduits() throws SQLException {
		
		ServiceProduits serviceP = new ServiceProduits();
		produit produit_vote = null;
		ArrayList<produit> ListeProduitVotes= new  ArrayList<produit>();

		Connection connection = Singleton.getConnection();
		 try {
	           String requette = "SELECT  \"id_Produit\" ,Count(\"id_Produit\")as nombre_vote FROM public.\"Vote\" Group By \"id_Produit\";";
	           PreparedStatement s = connection.prepareStatement(requette);
	           ResultSet re = s.executeQuery();
	           
	           while (re.next()) {

	        		   produit_vote= serviceP.recupererProduitParID(re.getInt(1)) ;   
	        		   //produitPlusVote.setVote(re.getInt(2));
	        		   ListeProduitVotes.add(produit_vote); 
	           }  
	           s.close();
	       } catch (SQLException e) {
	           e.printStackTrace();
	       }
		
		return ListeProduitVotes;
	}

	@Override
	public int recuperVoteProduit(int id) throws SQLException {
		Connection connection = Singleton.getConnection();
		ResultSet resultSet=null;
        int nbrVote = 0;
        try {

        	String requette = "SELECT count (v.\"id_Produit\") FROM public.\"Vote\" v where v.\"id_Produit\" = ?;";
	        PreparedStatement s = connection.prepareStatement(requette);
	        s.setInt(1, id);

            resultSet = s.executeQuery();
            while (resultSet.next()) {
                nbrVote = resultSet.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return nbrVote;
	}

	
	
	
}
