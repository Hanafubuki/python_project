1. Copie .env.example para .env
2. Mude os dados das variaveis de acordo com o que voce quer/precisa. Em .env voce deve colocar os dados sensiveis (senhas, keys, etc).
3. "Monte" e rode o docker puro sem db (descomente a linha comentada no arquivo Dockerfile):
    - `docker build -t python_project .`
    - `docker run --env-file ./.env python_project`
4. Ou rode com o docker compose com db:
    - `docker-compose build`
    - `docker-compose up`