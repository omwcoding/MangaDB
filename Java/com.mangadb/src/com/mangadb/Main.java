package com.mangadb;

public class Main {
	public static void main(String[] args) {
	
		Serie berserk = new Serie(1, "Berserk", false, 41, 0.0, new Volume[41]);
		for (int i = 1; i <= 41; i++) {
			Volume volume = new Volume(i, "Volume " + i, true, 5.5, berserk);
			berserk.volumi.add(volume);
		  }
		double costoBerserk = berserk.calcolaCostoTotale();

		Serie chainsawMan = new Serie(1, "Chainsaw Man", false, 11, 0.0, new Volume[11]);
		for (int i = 1; i <= 11; i++) {
			Volume volume = new Volume(i, "Volume " + i, true, 4.9, chainsawMan);
			chainsawMan.volumi.add(volume);
		  }
		double costoChainsawMan = chainsawMan.calcolaCostoTotale();

		
		System.out.println("Il costo totale di Berserk è: " + costoBerserk);
		System.out.println("Il costo totale di Chainsaw Man è: " + costoChainsawMan);
	}
}
