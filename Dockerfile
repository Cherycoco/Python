# Utilisation de l'image de base
FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8

# Répertoire de travail dans le conteneur
WORKDIR /app

# Copie des fichiers nécessaires
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY ./app /app

# Commande pour démarrer l'application
CMD ["uvicorn", "app.app:app", "--host", "0.0.0.0", "--port", "80"]



