FROM python:3.10-alpine3.16

RUN apk update && apk add mysql-client

COPY ./ /app

WORKDIR /app

COPY ./requirements.txt ./app/requirements.txt

RUN pip install -r ./requirements.txt

# Se nao quiser banco de dados, utilize apenas esse arquivo e descomente o comando abaixo
# CMD ["python3", "app/main.py"]