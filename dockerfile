FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY src ./src
COPY README.md ./
ENV PYTHONDONTWRITEBYTECODE=1 PYTHONUNBUFFERED=1
# Entrypoint padrão (worker). Pode trocar no painel.
CMD ["python", "-m", "src.main"]
