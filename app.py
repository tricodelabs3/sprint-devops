from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello():
    # Pega as variáveis de ambiente que o docker-compose injetou
    db_host = os.environ.get('DB_HOST', 'nao_conectado')
    return f"<h1>API Mock Vitta - Backend</h1><p>Conectado ao banco: {db_host}</p>"

if __name__ == "__main__":
    # O host 0.0.0.0 é necessário para rodar dentro do Docker
    app.run(host='0.0.0.0', port=5000)