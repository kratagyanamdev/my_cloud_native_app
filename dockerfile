FROM python:3.9-slim-buster

WORKDIR /app

COPY  requirements.txt .
# Increase timeout settings
ENV PIP_DEFAULT_TIMEOUT=100

# Use a retry mechanism
RUN pip3 install --no-cache-dir -r requirements.txt || \
    pip3 install --no-cache-dir -r requirements.txt || \
    pip3 install --no-cache-dir -r requirements.txt


COPY . .

ENV FLASK_RUN_HOST=0.0.0.0

EXPOSE 5000

CMD ["flask", "run"]FROM python:3.9-slim-buster

