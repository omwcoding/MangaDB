# MangaDB
Piccolo progetto per la creazione e gestione di un database che ha varie funzioni di controllo su una libreria di manga.

### To-Do
- [] Creazione tabelle 
  - [ ] Struttura
  - [x] Chiavi esterne
- [x] Insert
- [x] Views

### Completed Column ✓
- [x] Completed task title  

### Next steps:
- Sistema di wishlist
- Interfaccia grafica (inserimento, filtri ecc)
- ...
 

Considerazioni:
- Capire dove "storare" questo DB (host?)
- GUI per fare gli insert?
- Possibile APP?
- Estrarre informazioni automaticamente (Anilist API?)
  
    - Ogni serie ha 1(?) autore, ogni autore ha almeno 1 e può avere più serie
    - Ogni serie ha almeno un volume e può avere di più, ogni volume ha solo una serie
    - Ogni serie ha uno o più generi, ogni genere ha 0 o più serie
    - Ogni serie ha una sola categoria, ogni categoria ha 0 o più serie
    - Ogni serie ha una sola casa editrice, ogni casa editrice ha almeno 1 e può avere più serie