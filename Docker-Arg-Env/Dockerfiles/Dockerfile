FROM python:3.12-alpine

LABEL org.opencontainers.image.authors="Mehmet OGUZ"
LABEL org.opencontainers.image.title="ARG vs ENV in Docker"
LABEL org.opencontainers.image.description="A Dockerfile demo illustrating the difference between ARG (build-time) and ENV (runtime) instructions"
LABEL org.opencontainers.image.version="1.0"

ARG ENVIRONMENT=dev

ENV APP_ENVIRONMENT=${ENVIRONMENT}

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY app.py .

COPY templates/ ./templates/

RUN echo "Building for environment: ${APP_ENVIRONMENT}"

CMD ["python", "app.py"]
