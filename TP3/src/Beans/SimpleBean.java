package Beans;


public class SimpleBean {
private int compteur;
public SimpleBean() {
	setCompteur(0);
}

public int getCompteur() {
	return compteur;
}
public void setCompteur(int compteur) {
	this.compteur = compteur;
}
public void increment() {
   compteur++;	
}

}