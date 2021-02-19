package com.servlet;


import DAO.Services.ServiceProduits;
import DAO.Services.ServiceUtilisateurs;
import DAO.Services.ServiceVote;

import com.beans.produit;
import com.beans.utilisateur;


import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;






public class servlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	public servlet() {
        super();
    }
    
    ServiceProduits serviceP = new ServiceProduits();
    ServiceUtilisateurs serviceU = new ServiceUtilisateurs();
    ServiceVote serviceV = new ServiceVote();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getServletPath();
        if (path.equals("/Modif")) {
            try {
                String libelle = req.getParameter("libelle");
                int prix= Integer.parseInt((req.getParameter("prix")));
                int qte = Integer.parseInt((req.getParameter("qte")));
                int id= Integer.parseInt(req.getParameter("modif"));
                
                try {
                    serviceP.modifierProduit(id, libelle, prix, qte);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                
                ArrayList<produit> produits = serviceP.AfficherTout();
                req.setAttribute("produits", produits);
                req.getRequestDispatcher("/admin.jsp").forward(req, resp);
            } catch (SQLException ex) {
                Logger.getLogger(servlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        else if(path.equals("/login")) {
        	String nom = req.getParameter("username");
        	String pass = req.getParameter("password");
        	String Page = "";
        	HttpSession session = req.getSession(true);

				try {
					if(serviceU.sIdentifier(nom, pass,"utilisateur")!=null) {
					     session.setAttribute("Session_USER", serviceU.sIdentifier(nom, pass,"utilisateur"));
					     System.out.println("c fait"+session.getAttribute("Session_USER").toString());
					     Page="/user.jsp";
					}
					else if(serviceU.sIdentifier(nom, pass,"admin")!=null) {
						 session.setAttribute("Session_ADMIN", serviceU.sIdentifier(nom, pass,"admin"));
					     System.out.println("c fait"+session.getAttribute("Session_ADMIN").toString());
					     Page="/admin.jsp"; 
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				if(session.getAttribute("Session_USER")!=null || session.getAttribute("Session_ADMIN")!=null ) {
               	     ArrayList<produit> produits1;          	         
               	     produit produitPlusVotes = null;
					try {
						
						produits1 = serviceP.AfficherTout();
						produitPlusVotes = serviceV.recupererPlusVotes();
						ArrayList<Integer> __Listscountsvotes = new ArrayList<Integer>();
						
						//recuperer nbr votes de l'ensemble des produits
						for(produit p : produits1) {
							int c = serviceV.recuperVoteProduit(p.getId());
							 __Listscountsvotes.add(c);
						}
						
						// recupertion du produit le plus votees
						int max =0;
						for(int maxVotes : __Listscountsvotes) {
							if(maxVotes >= max) {
								max = maxVotes;
							}
						}
						
						req.setAttribute("produits", produits1);
						req.setAttribute("nbrVotes", __Listscountsvotes);
						req.setAttribute("maxVotes", max);
						
						req.setAttribute("ProduitPlusVotes",produitPlusVotes);
		                req.getRequestDispatcher(Page).forward(req, resp);
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
	                 
                }
	    }
        if (path.equals("/ajouterProduit")) {
        	
        	ArrayList<produit> produits;
        	
            String libelle = req.getParameter("libelle");
            int prix= Integer.parseInt(req.getParameter("prix")) ;
            int quantite= Integer.parseInt(req.getParameter("qte"));

            produit produitNv = new produit(libelle,prix,quantite);
                       
			try {
				serviceP.ajouterProduit(produitNv);
				produits = serviceP.AfficherTout();
				req.setAttribute("produits", produits);
	            req.getRequestDispatcher("/admin.jsp").forward(req,resp);
			} catch (SQLException e) {
				e.printStackTrace();
			}
            
        }
        
        if (path.equals("/ajouterUser")) {
        	
            String nom = req.getParameter("nom");
            String prenom = req.getParameter("prenom");
            String username = req.getParameter("username");
            String Mpasse = req.getParameter("password");

           	utilisateur user = new utilisateur(nom, prenom, "utilisateur", Mpasse, username);
                       
			try {
				serviceU.inscrire(user);
	            req.getRequestDispatcher("/login.jsp").forward(req,resp);
			} catch (SQLException e) {
				e.printStackTrace();
			}
            
        }
        else if (path.equals("/voter")) {
        	//HttpSession session = req.getSession(true);
        	String id_produit=req.getParameter("id_produit");
        	String id_user= req.getParameter("id_user");
        	ArrayList<produit> produits1;          	         
      	    produit produitPlusVotes = null;
        	//utilisateur user = (utilisateur) session.getAttribute("Session_USER");
        	//int id_user = user.getId();
        	
        	try {
				serviceP.voterProduit(Integer.parseInt(id_produit), Integer.parseInt(id_user));
				produits1 = serviceP.AfficherTout();
				produitPlusVotes = serviceV.recupererPlusVotes();
				ArrayList<Integer> __Listscountsvotes = new ArrayList<Integer>();
				
				//recuperer nbr votes de l'ensemble des produits
				for(produit p : produits1) {
					int c = serviceV.recuperVoteProduit(p.getId());
					 __Listscountsvotes.add(c);
				}
				
				// recupertion du produit le plus votees
				int max =0;
				for(int maxVotes : __Listscountsvotes) {
					if(maxVotes >= max) {
						max = maxVotes;
					}
				}
				
				req.setAttribute("produits", produits1);
				req.setAttribute("nbrVotes", __Listscountsvotes);
				req.setAttribute("maxVotes", max);
				
				req.setAttribute("ProduitPlusVotes",produitPlusVotes);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        	req.getRequestDispatcher("/user.jsp").forward(req, resp);
        	
        }
        
        
   }
        


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String path = req.getServletPath();
        if (path.equals("/admin")) {
        	HttpSession session = req.getSession(true);
            if(session.getAttribute("Session_ADMIN")!=null) {
            	try {
                    ArrayList<produit> produits = serviceP.AfficherTout();
                    req.setAttribute("produits", produits);
                    req.getRequestDispatcher("/admin.jsp").forward(req, resp);
                } catch (SQLException ex) {
                    Logger.getLogger(servlet.class.getName()).log(Level.SEVERE, null, ex);
                }
            	
            }
            else
            	req.getRequestDispatcher("/login.jsp").forward(req, resp);
            	
            
        }
        else if (path.equals("/Sup")) {
            try {
                int id = Integer.parseInt(req.getParameter("id"));
                serviceP.supprimerProduit(id);
                ArrayList<produit> produits = serviceP.AfficherTout();
                req.setAttribute("produits", produits);
                req.getRequestDispatcher("/admin.jsp").forward(req, resp);
            } catch (SQLException ex) {
                Logger.getLogger(servlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        else if (path.equals("/deconnecter")) {
            HttpSession session = req.getSession();
			session.removeAttribute("Session_USER");
			session.removeAttribute("Session_ADMIN");
			req.getRequestDispatcher("/login.jsp").forward(req, resp);

        }
        else if (path.equals("/PageUser")) {
        	ArrayList<produit> produits;
        	HttpSession session = req.getSession(true);
            if(session.getAttribute("Session_USER")!=null) {
				try {
					produits = serviceP.AfficherTout();
					req.setAttribute("produits", produits);
		            req.getRequestDispatcher("/user.jsp").forward(req, resp);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
            
            }
            else
            	req.getRequestDispatcher("/login.jsp").forward(req, resp);
        }
        
        
        
        
        
     }
 }
