FROM python:3.7.4

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN apt-get update
RUN apt-get install -y libxml2-dev libxmlsec1-dev
RUN pip install --no-cache-dir -r requirements.txt

COPY ./app .

CMD [ "python", "./listener.py" ]
