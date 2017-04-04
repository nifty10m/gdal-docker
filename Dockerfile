FROM geodata/gdal
MAINTAINER Jörg Herbst <joerg.herbst@10m.de>

RUN add-apt-repository -y ppa:chris-lea/node.js
RUN apt-get -y update
RUN apt-get -y install nodejs
RUN npm install -g ogre

EXPOSE 3000
CMD ogre
