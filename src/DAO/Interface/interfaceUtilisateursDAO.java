package DAO.Interface;


import com.beans.utilisateur;
import java.sql.SQLException;
import java.util.ArrayList;


public interface interfaceUtilisateursDAO {
    
  
    public utilisateur inscrire(utilisateur user) throws SQLException;
    public utilisateur sIdentifier(String nom,String password,String role) throws SQLException;
    public ArrayList<utilisateur> AfficherUsers() throws SQLException;
    public utilisateur recupererUserParID(int id) throws SQLException ;
    
}
