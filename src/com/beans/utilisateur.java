package com.beans;

public class utilisateur {
    
    private int id;
    private String nom;
    private String prenom;
    private String password;
    private String role;
    private String username;

    public utilisateur(int id, String nom, String prenom, String role,String password,String username) {
        this.id = id;
        this.nom = nom;
        this.prenom = prenom;
        this.password = password;
        this.role = role;
        this.username = username;
    }
    
    public utilisateur(String nom, String prenom, String role,String password,String username) {
        this.nom = nom;
        this.prenom = prenom;
        this.password = password;
        this.role = role;
        this.username = username;
    }

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
	
	

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Override
	public String toString() {
		return "utilisateur [id=" + id + ", nom=" + nom + ", prenom=" + prenom + ", password=" + password + ", role="
				+ role + ", username=" + username + "]";
	}
    
    
    
    
    
    
}
