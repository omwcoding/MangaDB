# MangaDB
Piccolo progetto per la creazione di una webapp in grado di gestire la propria collezione di manga.

### To-Do
- [X] Setup Django project
- [X] Setup Django app
- [X] Setup Django models
- [ ] Setup Django views
- [ ] Organize Django templates (urls, views, templates, static files, html files, ecc)
- [ ] Homepage
- [X] Favorites collection
- [X] Insert function
- [ ] Search function
- [X] Update function
- [ ] Filter function
- [ ] Login function
- [ ] User function
- [ ] Wishlist function

### Da capire:
- Trasformare webapp locale in webapp accessibile (hosting?)
- Pensare a un modo per aggiungere manga in modo più veloce (scraping? da che fonte?)
- 
 
### Istruzioni:
1. Installare un ambiente virtuale dentro la cartella del progetto
```
    python -m venv venv
```
1. Attivare l'ambiente virtuale (controllare di essere nella cartella giusta)
```
    venv\Scripts\activate
```
1. Avvisare il server
``` 
    python manage.py runserver
```
1. Ricordarsi di effettuare le migrazioni (nel caso di aggiornamenti al db)
```
    python manage.py makemigrations
    python manage.py migrate
```

Ricordarsi di installare le librerie e dipendenze necessarie
```
    pip install -r requirements.txt
```