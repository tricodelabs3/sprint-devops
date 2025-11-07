# Estágio 1: Base (python:3.10-slim)
FROM python:3.10-slim

# Define o diretório de trabalho
WORKDIR /app

# Copia o 'app.py' (e qualquer outro arquivo) para dentro do contêiner
COPY . .

# Instala o Flask, que é a única dependência do nosso app.py
RUN pip install flask

# Estágio 2: Segurança (cria usuário não-admin)
RUN useradd -m -s /bin/bash appuser
USER appuser

# Estágio 3: Execução (roda o app.py usando Flask)
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0", "--port=5000"]