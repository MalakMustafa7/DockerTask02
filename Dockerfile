FROM python:latest

WORKDIR /app

RUN apt update && apt install -y iputils-ping

COPY app.py .

CMD ["sh", "-c", "python app.py; exec sh"]
