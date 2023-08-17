
FROM python:3.10

RUN apt-get update 

RUN apt-get install -y python3-pip

RUN pip3 install -y -r requirements.txt

CMD ["python3", "app.py"]
