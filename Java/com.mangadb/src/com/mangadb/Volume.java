package com.mangadb;

public class Volume {
	int id_volume;
	String nome;
	boolean possesso;
	double prezzo;
	
	Volume(int id_volume, String nome, boolean possesso, double prezzo){
		this.id_volume = id_volume;
		this.nome = nome;
		this.possesso = possesso;
		this.prezzo = prezzo;
		
	}
}
