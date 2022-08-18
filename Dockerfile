FROM python:3.8.6-buster

COPY requirements.txt /requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY models /models
COPY api /api
COPY lemon_project /lemon_project

CMD uvicorn api.fast:app --host 0.0.0.0