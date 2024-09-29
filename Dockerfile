FROM python:3.11

ENV APP_HOME /app 

WORKDIR $APP_HOME

COPY run.sh run.sh 
COPY hw13/ hw13/
COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt 

CMD ./run.sh 
