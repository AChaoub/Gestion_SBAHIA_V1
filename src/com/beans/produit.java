package com.beans;

public class produit {

       private int id;
       private String libelle;
       private int prix;
       private int quantite;


    public produit(int id, String libelle, int prix, int quantite) {
        this.id = id;
        this.libelle = libelle;
        this.prix = prix;
        this.quantite = quantite;
   
    }

    public produit(String libelle, int prix, int quantite) {
        this.libelle = libelle;
        this.prix = prix;
        this.quantite = quantite;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLibelle() {
        return libelle;
    }

    public void setLibelle(String libelle) {
        this.libelle = libelle;
    }

    public int getPrix() {
        return prix;
    }

    public void setPrix(int prix) {
        this.prix = prix;
    }

    public int getQuantite() {
        return quantite;
    }

    public void setQuantite(int quantite) {
        this.quantite = quantite;
    }

    

    @Override
    public String toString() {
        return "produit{" +
                "id=" + id +
                ", libelle='" + libelle +
                ", prix=" + prix +
                ", quantite=" + quantite +
                '}';
    }
}
