FROM tensorflow/tensorflow:2.18.0rc2

RUN apt-get update

COPY ./requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

COPY . .

WORKDIR ./Server

CMD ["python",  "server.py"]
