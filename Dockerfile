FROM python:3.10-slim

WORKDIR /app
COPY . .

# Installing packages
RUN pip install --upgrade pip
RUN apt-get update && apt-get install -y build-essential libssl-dev libffi-dev python-dev 
RUN pip install -r requirements.txt