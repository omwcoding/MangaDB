# MangaDB
Piccolo progetto per la creazione di una webapp in grado di gestire la propria collezione di manga.

### To-Do
- [ ] Homepage
- [ ] User function (including library, wishlist, statistics, etc.)
- [X] Favorites collection
- [X] Insert function
- [X] Delete function
- [ ] Search function
- [X] Update function
- [ ] Filter function
- [ ] Login/logout function
- [ ] Register function
- [ ] Admin function
- [ ] ...

### To-Do (extra)
- [X] Dark mode
- [ ] Mobile friendly
- [ ] ...

### Da capire:
- Trasformare webapp locale in webapp accessibile (hosting?)
- Pensare a un modo per aggiungere manga in modo più veloce (scraping? da che fonte?)
- ...

## BUGS:
- Modifica di una collezione rimanda a pagina sbagliata (controllare url, funziona correttamente)
- Pulsante "Aggiorna collezione" non funzionante su "Preferiti" (si viene rimandati alla pagina senza modifiche effettuate)
- ...
 
### Istruzioni:
1. Installare un ambiente virtuale dentro la cartella del progetto
```
    python -m venv venv
```
2. Attivare l'ambiente virtuale (controllare di essere nella cartella giusta)
```
    cd .\MangaDB\
```
```
    venv\Scripts\activate
```

3. Avviare il server
``` 
    python manage.py runserver
```

EXTRA: 
! Ricordarsi di effettuare le migrazioni (nel caso di aggiornamenti al db)
```
    python manage.py makemigrations
    python manage.py migrate
```

! Ricordarsi di installare le librerie e dipendenze necessarie !
```
    pip install -r requirements.txt
```
Avviare il server per la visione da altri dispositivi connessi alla stessa rete
    Inserire il proprio IP in ALLOWED_HOSTS nel file settings.py (MangaDB\MangaDB\settings.py)    
```
    python manage.py TUOIP:8000 runserver
```