
# Utiliser une image officielle FastAPI basée sur Python 3.8
FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8-slim

# Copier le contenu du répertoire courant dans le conteneur
COPY ./ /app

# Exposer le port 80 pour les connexions externes
EXPOSE 80

# Démarrer le serveur FastAPI avec Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
