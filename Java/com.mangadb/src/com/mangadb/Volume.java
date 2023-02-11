package com.mangadb;

public class Volume {
	int id_volume;
	String nome;
	boolean possesso;
	double prezzo;
	Serie serie;
	
	Volume(int id_volume, String nome, boolean possesso, double prezzo,Serie serie){
		this.id_volume = id_volume;
		this.nome = nome;
		this.possesso = possesso;
		this.prezzo = prezzo;
		this.serie = serie;
	}
}
