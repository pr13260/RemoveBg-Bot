FROM ubuntu:20.04


RUN mkdir ./app
RUN chmod 777 ./app
WORKDIR ./app

RUN apt -qq update

RUN apt -qq install -y git python3-pip		
RUN pip3 install pyrogram

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
COPY . .
CMD ["python3","bot.py"]
