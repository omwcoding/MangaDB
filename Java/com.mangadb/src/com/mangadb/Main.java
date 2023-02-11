package com.mangadb;

public class Main {
	public static void main(String[] args) {
	
		Serie berserk = new Serie(1, "Berserk", false, 41, 0.0, new Volume[41]);
		for (int i = 1; i <= 41; i++) {
			Volume volume = new Volume(i, "Volume " + i, true, 5.5, berserk);
			berserk.volumi.add(volume);
		  }
		double costoBerserk = berserk.calcolaCostoTotale();

		Serie chainsawMan = new Serie(4, "Chainsaw Man", false, 11, 0.0, new Volume[11]);
		for (int i = 1; i <= 11; i++) {
			Volume volume = new Volume(i, "Volume " + i, true, 4.9, chainsawMan);
			chainsawMan.volumi.add(volume);
		  }
		double costoChainsawMan = chainsawMan.calcolaCostoTotale();

		Serie firePunch = new Serie(7, "Fire Punch", true, 8, 0.0, new Volume[8]);
		for (int i = 1; i <= 8; i++) {
			Volume volume = new Volume(i, "Volume " + i, true, 4.9, firePunch);
			firePunch.volumi.add(volume);
		  }
		double costoFirePunch = firePunch.calcolaCostoTotale();

		Serie devilman = new Serie(3, "Devilman", true, 5, 0.0, new Volume[5]);
		for (int i = 1; i <= 5; i++) {
			Volume volume = new Volume(i, "Volume " + i, true, 7.5, firePunch);
			devilman.volumi.add(volume);
		  }
		double costoDevilman = devilman.calcolaCostoTotale();

		
		System.out.println("Il costo totale di Berserk è: " + costoBerserk);
		System.out.println("Il costo totale di Chainsaw Man è: " + costoChainsawMan);
		System.out.println("Il costo totale di Fire Punch è: " + costoFirePunch);
		System.out.println("Il costo totale di Devilman è: " + costoDevilman);
	}
}
