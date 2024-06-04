# Bazowanie na odpowiednim Pythonie
FROM python:3.10.12
# Wybór katalogu roboczego
WORKDIR /app
# Kopiowanie plików
COPY . /app
# Instalacja wymagań
RUN pip install -r requirements.txt
# Ustawienie zmiennej środowiskowej
ENV FLASK_APP=app.py
# Otwarcie portu 5000 dla Dockera
EXPOSE 5000
# Uruchomienie
CMD ["flask", "run", "--host=127.0.0.1"]
