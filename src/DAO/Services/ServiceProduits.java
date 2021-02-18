/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO.Services;

import ConnectionDB.Singleton;
import com.beans.produit;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import DAO.Interface.interfaceProduitsDAO;

/**
 *
 * @author Admin
 */
public class ServiceProduits implements interfaceProduitsDAO{
    
     @Override
    public ArrayList<produit> AfficherTout() throws SQLException{
         ArrayList<produit> ListeProduits = new ArrayList<produit>();
         Connection connection = Singleton.getConnection();

        try {
            String requette = "SELECT * FROM \"public\".\"Produit\" order by \"id_Produit\"";
            PreparedStatement s = connection.prepareStatement(requette);
            ResultSet re = s.executeQuery();

            while (re.next()) {
                produit p = new produit(re.getInt(1), re.getString(2), re.getInt(3), re.getInt(4));
                ListeProduits.add(p);
            }
            s.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return ListeProduits;
    }
    
    
    @Override
    public produit ajouterProduit(produit p) throws SQLException {
        
        Connection connection = Singleton.getConnection();

        try {
            PreparedStatement ps = connection.prepareStatement("INSERT INTO public.\"Produit\"(\"libelle_Produit\", \"prix_Produit\", \"quantite_Produit\")VALUES (?, ?, ?);");
            ps.setString(1,p.getLibelle());
            ps.setInt(2, p.getPrix());
            ps.setInt(3, p.getQuantite());
            ps.executeUpdate();
            
            //Lié l'id du classe produit avec l'id du table produit postgre autoincrement
            PreparedStatement ps2 = connection.prepareStatement("Select max(\"id_Produit\") from public.\"Produit\"");
            ResultSet rs = ps2.executeQuery();

            if(rs.next()) {
                p.setId(rs.getInt(1));
                p.setVote(0);
            }
            ps.close();
            ps2.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return p;    
    }

    @Override
    public void modifierProduit(int id, String libelle, int prix, int qte) throws SQLException {
        Connection connection = Singleton.getConnection();
        try {
            String requette = "UPDATE public.\"Produit\" SET \"libelle_Produit\"=?, \"prix_Produit\"=?, \"quantite_Produit\"=? WHERE \"id_Produit\"="+id;
            PreparedStatement s = connection.prepareStatement(requette);
            s.setString(1, libelle);
            s.setInt(2, prix);
            s.setInt(3, qte);
            s.executeUpdate();
            s.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }    
    }

    @Override
    public void supprimerProduit(int id) throws SQLException {

        Connection connection = Singleton.getConnection();
        try {
            if(recupererProduitParID(id)!=null){
                PreparedStatement ps = connection.prepareStatement("DELETE FROM public.\"Produit\" WHERE \"id_Produit\"=?;");
                ps.setInt(1,id);
                ps.executeUpdate();
                System.out.println("Suppression Avec Succes");
                ps.close();
            }
            else System.out.println("produit introuvable");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
    }

    @Override
    public produit recupererProduitParID(int id) throws SQLException {
        produit pr = null;
        ArrayList<produit> Liste = this.AfficherTout();
        for(produit x : Liste){
            if(x.getId() == id){
                pr= x;
            }

        }
        return pr;
    }

    @Override
    public void voterProduit(int produit_id,int user_id) throws SQLException {

       Connection connection = Singleton.getConnection();


       try {
    	   
           PreparedStatement ps = connection.prepareStatement("INSERT INTO public.\"Vote\" (\"id_Utilisateur\", \"id_Produit\") VALUES (?, ?);");
           ps.setInt(1,user_id);
           ps.setInt(2, produit_id);
           ps.executeUpdate();
           
           ps.close();

       } catch (SQLException e) {
           e.printStackTrace();
       }


    }
    
    

    

   
    
}
