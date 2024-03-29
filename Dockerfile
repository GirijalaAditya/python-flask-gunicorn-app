FROM python:3.9-alpine
WORKDIR /app
COPY requirements.txt .
RUN pip3 install -r requirements.txt
COPY . .
EXPOSE 80
ENTRYPOINT ["gunicorn"]
CMD ["--config", "gunicorn_config.py", "app:app"]