FROM python:3.10-slim

WORKDIR /app

RUN apt-get update && apt-get install -y curl vim git netcat-traditional

EXPOSE 8080

CMD ["sh", "-c", "while true; do nc -l -p 8080 -e echo ok; done"]

