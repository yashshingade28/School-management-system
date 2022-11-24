FROM python:3.9.15-slim-bullseye
RUN apt update
COPY ./ ./app
WORKDIR /app
RUN pip install -r requirements.txt
RUN python3 manage.py migrate
EXPOSE 8000
ENTRYPOINT ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
