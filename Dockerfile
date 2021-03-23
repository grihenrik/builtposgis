FROM python:3.7-buster
RUN apt-get -y -q update 
RUN apt-get -y -q upgrade
RUN apt-get -y -q install wget
RUN apt-get -y -q install build-essential postgis binutils libproj-dev gdal-bin
RUN apt-get -y -q update && apt-get -y upgrade

RUN wget -q http://download.osgeo.org/geos/geos-3.6.5.tar.bz2
RUN tar xjf geos-3.6.5.tar.bz2; cd geos-3.6.5; ./configure; make; make install
