/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO.Services;

import ConnectionDB.Singleton;


import com.beans.utilisateur;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import DAO.Interface.interfaceUtilisateursDAO;

/**
 *
 * @author Admin
 */
public class ServiceUtilisateurs implements interfaceUtilisateursDAO{
	@Override
	public ArrayList<utilisateur> AfficherUsers() throws SQLException {
		 ArrayList<utilisateur> ListeUsers = new ArrayList<utilisateur>();
         Connection connection = Singleton.getConnection();

        try {
            String requette = "SELECT \"id_Utilisateur\", \"nom_Utilisateur\", \"prenom_Utilisateur\", \"role_Utilisateur\", \"MPasse\", \"userName\" FROM public.\"Utilisateur\";";
            PreparedStatement s = connection.prepareStatement(requette);
            ResultSet re = s.executeQuery();

            while (re.next()) {
                utilisateur p = new utilisateur(re.getInt(1), re.getString(2),re.getString(3), re.getString(4),re.getString(5),re.getString(6));
                ListeUsers.add(p);
            }
            s.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return ListeUsers;
	}


	@Override
	public utilisateur inscrire(utilisateur user) throws SQLException {
		    
		Connection connection = Singleton.getConnection();

        try {
            PreparedStatement ps = connection.prepareStatement("INSERT INTO public.\"Utilisateur\"(\"nom_Utilisateur\", \"prenom_Utilisateur\", \"role_Utilisateur\", \"MPasse\", \"userName\") VALUES (?, ?, ?, ?, ?);");
            ps.setString(1,user.getNom());
            ps.setString(2, user.getPrenom());
            ps.setString(3, user.getRole());
            ps.setString(4, user.getPassword());
            ps.setString(5, user.getUsername());
            ps.executeUpdate();
            

            PreparedStatement ps2 = connection.prepareStatement("Select max(\"id_Utilisateur\") from public.\"Utilisateur\"");
            ResultSet rs = ps2.executeQuery();

            if(rs.next()) {
                user.setId(rs.getInt(1));
            }
            ps.close();
            ps2.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user; 
	}

	@Override
	public utilisateur sIdentifier(String username ,String password,String role) throws SQLException {
		 ArrayList<utilisateur> listeUsers = this.AfficherUsers();
		 utilisateur userConfirme = null;
	     for(utilisateur user : listeUsers){
	    	 if( (user.getPassword().equals(password))&&(user.getUsername().equals(username))&&(user.getRole().equals(role))&&(password.length()>=8)){
	          	userConfirme = user;   
	         }    
	     }
		return userConfirme;
	}


	@Override
	public utilisateur recupererUserParID(int id) throws SQLException {
		utilisateur user = null;
        ArrayList<utilisateur> ListeUSers = this.AfficherUsers();
        for(utilisateur x : ListeUSers){
            if(x.getId() == id){
                user= x;
            }

        }
        return user;
	}



	
  
    

    

   
    
}
