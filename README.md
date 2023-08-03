# MangaDB
Piccolo progetto per la creazione di una webapp in grado di gestire la propria collezione di manga.

### To-Do
- [X] Setup Django project
- [X] Setup Django app
- [X] Setup Django models
- [ ] 
- 

### Completed Column ✓
- [x] Completed task title  

### Next steps:
- Organizzazione pagine e urls
- Sistema di wishlist
- Funzioni di ricerca, inserimento, filtri ecc
- Sistema di login e user (ognuno ha la sua collezione)
- ...
 

Considerazioni:
- Trasformare webapp locale in webapp accessibile
- Hosting della webapp
- Estrarre informazioni automaticamente (Anilist API?)
 
Istruzioni:
1. Installare un ambiente virtuale dentro la cartella del progetto
```
    python -m venv venv
```
2. Attivare l'ambiente virtuale (controllare di essere nella cartella giusta)
    venv\Scripts\activate

3. Avvisare il server 
    python manage.py runserver

4. Ricordarsi di effettuare le migrazioni (nel caso di aggiornamenti al db)
    python manage.py makemigrations
    python manage.py migrate

In caso di problemi reinstallare dipendenze:
    pip install -r requirements.txt