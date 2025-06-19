FROM python:3.10-slim

WORKDIR /app

COPY . .

RUN pip install streamlit

EXPOSE 8080

CMD ["streamlit", "run", "placeholder_app.py", "--server.port=8080", "--server.address=0.0.0.0"]

