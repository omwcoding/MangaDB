package com.mangadb;

public class Serie {
	int id_serie;
	String nome;
	boolean is_finished;
	int n_volumi;
	double costo_totale;
	
	Serie(int id_serie, String nome, boolean is_finished, int n_volumi, double costo_totale){
		this.id_serie = id_serie;
		this.nome = nome;
		this.is_finished = is_finished;
		this.n_volumi = n_volumi;
		this.costo_totale = costo_totale;
	}

	public double getCosto_totale() {
		return costo_totale;
	}
}
