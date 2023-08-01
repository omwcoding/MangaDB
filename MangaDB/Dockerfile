# Usa un'immagine di base Python
FROM python:3.11.4

# Imposta la directory di lavoro nel container
WORKDIR /MangaDB

# Copia i file del progetto nel container
COPY . /MangaDB

# Installa le dipendenze
RUN pip install -r requirements.txt

# Esponi la porta
EXPOSE 8000

# Avvia l'applicazione Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
