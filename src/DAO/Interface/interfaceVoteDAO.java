package DAO.Interface;

import java.sql.SQLException;
import java.util.ArrayList;

import com.beans.produit;

public interface interfaceVoteDAO {

	
	public produit recupererPlusVotes() throws SQLException;
	public ArrayList<produit> recupereVoteDesProduits() throws SQLException;
	public int recuperVoteProduit(int id) throws SQLException;
	
}
