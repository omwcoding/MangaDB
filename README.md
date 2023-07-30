# MangaDB
Piccolo progetto per la creazione di una webapp in grado di gestire la propria collezione di manga.

### To-Do
- [X] Setup Django project
- [] Struttura DB
  - [] Struttura
  - [] Chiavi esterne
- [] Insert
- [] Views

### Completed Column ✓
- [x] Completed task title  

### Next steps:
- Organizzazione pagine e urls
- Sistema di wishlist
- Funzioni di ricerca, inserimento, filtri ecc
- ...
 

Considerazioni:
- Trasformare webapp locale in webapp accessibile
- Hosting della webapp
- Estrarre informazioni automaticamente (Anilist API?)
 

######
Relazioni:
    - Ogni serie ha 1(?) autore, ogni autore ha almeno 1 e può avere più serie
    - Ogni serie ha almeno un volume e può avere di più, ogni volume ha solo una serie
    - Ogni serie ha uno o più generi, ogni genere ha 0 o più serie
    - Ogni serie ha una sola categoria, ogni categoria ha 0 o più serie
    - Ogni serie ha una sola casa editrice, ogni casa editrice ha almeno 1 e può avere più serie