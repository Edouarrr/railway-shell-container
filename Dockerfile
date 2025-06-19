FROM python:3.10-slim

WORKDIR /app

RUN apt-get update && apt-get install -y curl vim git

EXPOSE 8080

# Lance un vrai serveur HTTP qui reste actif
CMD ["python3", "-m", "http.server", "8080"]

