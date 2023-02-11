package com.mangadb;

public class Main {
	public static void main(String[] args) {
		Serie naruto = new Serie(1, "Naruto", false, 3, 0.0, new Volume[3]);
		Serie berserk = new Serie(2, "Berserk", false, 2, 0.0, new Volume[2]);

		Volume volume1Naruto = new Volume(1, "Naruto volume 1", true, 10.0, naruto);
		Volume volume2Naruto = new Volume(2, "Naruto volume 2", true, 10.0, naruto);
		Volume volume3Naruto = new Volume(3, "Naruto volume 3", true, 10.0, naruto);

		Volume volume1Berserk = new Volume(1, "Berserk volume 1", true, 15.0, berserk);
		Volume volume2Berserk = new Volume(2, "Berserk volume 2", true, 15.0, berserk);

		naruto.volumi[0] = volume1Naruto;
		naruto.volumi[1] = volume2Naruto;
		naruto.volumi[2] = volume3Naruto;

		berserk.volumi[0] = volume1Berserk;
		berserk.volumi[1] = volume2Berserk;
		
		double costoNaruto = naruto.calcolaCostoTotale();
		double costoBerserk = berserk.calcolaCostoTotale();
		
		System.out.println("Il costo totale di Naruto è: " + costoNaruto);
		System.out.println("Il costo totale di Berserk è: " + costoBerserk);
	}
}
