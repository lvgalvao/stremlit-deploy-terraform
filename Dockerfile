# Use uma imagem base do Python
FROM python:3.8-slim

# Defina o diretório de trabalho
WORKDIR /app

# Copie os arquivos necessários para o contêiner
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Comando para iniciar o Streamlit
CMD ["streamlit", "run", "app.py", "--server.port=80", "--server.address=0.0.0.0"]
