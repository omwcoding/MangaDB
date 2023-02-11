package com.mangadb;
import java.util.ArrayList;

public class Serie {
	int id_serie;
	String nome;
	boolean is_finished;
	int n_volumi;
	double costo_totale;
	ArrayList<Volume> volumi;
	
	Serie(int id_serie, String nome, boolean is_finished, int n_volumi, double costo_totale, Volume[] volumi){
		this.id_serie = id_serie;
		this.nome = nome;
		this.is_finished = is_finished;
		this.n_volumi = n_volumi;
		this.costo_totale = costo_totale;
		this.volumi = new ArrayList<Volume>();
	}

	public double calcolaCostoTotale() {
		double costoTotale = 0;
		for (Volume volume : volumi) {
			costoTotale += volume.prezzo;
		}
		return costoTotale;
	}
	
	public void addVolume(Volume volume) {
        this.volumi.add(volume);
    }

    public double calcolaCostoAttuale() {
        double costoAttuale = 0;
        for (Volume volume : volumi) {
            if (volume.possesso) {
                costoAttuale += volume.prezzo;
            }
        }
        return costoAttuale;
    }
}
