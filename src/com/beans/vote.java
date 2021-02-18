package com.beans;

public class vote {
	
	private int id_utilisateur;
	private int id_produit;
	

	public vote(int id_utilisateur, int id_produit) {
		super();
		this.id_utilisateur = id_utilisateur;
		this.id_produit = id_produit;
	}
	public int getId_utilisateur() {
		return id_utilisateur;
	}
	public void setId_utilisateur(int id_utilisateur) {
		this.id_utilisateur = id_utilisateur;
	}
	public int getId_produit() {
		return id_produit;
	}
	public void setId_produit(int id_produit) {
		this.id_produit = id_produit;
	}
	@Override
	public String toString() {
		return "vote [id_utilisateur=" + id_utilisateur + ", id_produit=" + id_produit + "]";
	}
	
	

}
