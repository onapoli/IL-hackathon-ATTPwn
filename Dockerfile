FROM ubuntu:focal
# Cambio versión Ubuntu para poder construir la imagen ATTPwn. La anterior versión fallaba
# al llegar al step de apt porque no encontraba los repositorios desde donde descargar
# los programas indicados.

WORKDIR /ATTPwn

RUN apt-get update && \
	apt-get -y install python3 git python3-pip

ADD . /ATTPwn

RUN pip3 install -r requirements.txt

#RUN git clone https://github.com/ElevenPaths/ATTPwn

CMD ["python3","app.py"]

