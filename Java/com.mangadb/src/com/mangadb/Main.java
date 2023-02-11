package com.mangadb;

public class Main {
	public static void main(String[] args) {
	
		Serie berserk = new Serie(1, "Berserk", false, 41, 0.0, new Volume[41]);
		for (int i = 1; i <= 41; i++) {
			Volume volume = new Volume(i, "Volume " + i, false, 5.5, berserk);
			berserk.volumi.add(volume);
		  }
		double costoBerserk = berserk.calcolaCostoTotale();
		double costoAttualeBerserk = berserk.calcolaCostoAttuale();

		Serie chainsawMan = new Serie(4, "Chainsaw Man", false, 11, 0.0, new Volume[11]);
		for (int i = 1; i <= 11; i++) {
			Volume volume = new Volume(i, "Volume " + i, false, 4.9, chainsawMan);
			chainsawMan.volumi.add(volume);
		  }
		double costoChainsawMan = chainsawMan.calcolaCostoTotale();
		double costoAttualeChainsawMan = chainsawMan.calcolaCostoAttuale();

		Serie firePunch = new Serie(7, "Fire Punch", true, 8, 0.0, new Volume[8]);
		for (int i = 1; i <= 8; i++) {
			Volume volume = new Volume(i, "Volume " + i, false, 4.9, firePunch);
			firePunch.volumi.add(volume);
		  }
		double costoFirePunch = firePunch.calcolaCostoTotale();
		double costoAttualeFirePunch = firePunch.calcolaCostoAttuale();

		Serie devilman = new Serie(3, "Devilman", true, 5, 0.0, new Volume[5]);
		for (int i = 1; i <= 5; i++) {
			Volume volume = new Volume(i, "Volume " + i, false, 7.5, firePunch);
			devilman.volumi.add(volume);
		  }
		double costoDevilman = devilman.calcolaCostoTotale();
		double costoAttualeDevilman = devilman.calcolaCostoAttuale();

		
		System.out.println("Il costo totale di Berserk è " + costoBerserk + " euro, tu hai speso " + costoAttualeBerserk + " euro");
		System.out.println("Il costo totale di Chainsaw Man è " + costoChainsawMan + " euro, tu hai speso " + costoAttualeChainsawMan + " euro");
		System.out.println("Il costo totale di Fire Punch è " + costoFirePunch + " euro, tu hai speso " + costoAttualeFirePunch + " euro");
		System.out.println("Il costo totale di Devilman è " + costoDevilman + " euro, tu hai speso " + costoAttualeDevilman + " euro");
	}
}
