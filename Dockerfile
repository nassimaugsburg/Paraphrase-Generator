FROM tensorflow/tensorflow:2.17.0rc1

RUN apt-get update

COPY ./requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

COPY . .

WORKDIR ./Server

CMD ["python",  "server.py"]
