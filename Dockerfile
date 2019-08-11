FROM ubuntu:16.04
COPY helloworld.py /home/helloworld.py
RUN apt-get update && apt-get install -y python-pip 
RUN pip install flask
WORKDIR /home
CMD python helloworld.py
