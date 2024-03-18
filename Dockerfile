FROM python:3.9-slim

WORKDIR /home/app

COPY mnist_model ./ \
    model_repository ./ \
    requirements.txt ./ \
    flask ./

RUN pip install -r requirements.txt
EXPOSE 5001
CMD python3 -u flask/server.py
