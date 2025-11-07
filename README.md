# Projeto Vitta

Este repositório contém os arquivos de DevOps para a Sprint 2.

## Instruções de Deploy e Testes

Para executar este projeto, você precisará de uma VM (Linux) com Docker e Docker Compose instalados.

1.  Clone este repositório:
    ```bash
    git clone https://github.com/tricodelabs3/sprint-devops.git
    ```

2.  Entre na pasta do projeto:
    ```bash
    cd vitta-challenge-api
    ```

3.  Execute o Docker Compose:
    ```bash
    sudo docker-compose up -d
    ```

4.  Aguarde 1-2 minutos para o banco de dados Oracle iniciar.

5.  **Teste a aplicação:**
    Acesse no seu navegador: `http://20.63.76.207:8080/`
