FROM python:3.13-slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

# Document which port the app listens on (inside container)
EXPOSE 5000

CMD ["python", "app.py"]
