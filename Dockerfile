FROM python:3.11

WORKDIR /app

COPY requirements.txt .

RUN pip install --upgrade pip && \
    pip install --no-cache-dir --timeout=120 --retries=5 -r requirements.txt

COPY . .

CMD ["python", "app.py"]