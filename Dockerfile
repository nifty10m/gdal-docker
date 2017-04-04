FROM geodata/gdal
MAINTAINER Marc Harter <wavded@gmail.com

RUN add-apt-repository -y ppa:chris-lea/node.js
RUN apt-get -y update
RUN apt-get -y install nodejs
RUN npm install -g ogre

EXPOSE 3000
CMD ogre
