FROM python:3.10-slim
WORKDIR /app
RUN apt-get update && apt-get install -y curl vim git
CMD ["sleep", "infinity"]
