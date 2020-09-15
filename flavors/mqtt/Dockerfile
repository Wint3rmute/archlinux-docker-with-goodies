FROM wnt3rmute/archlinux-with-goodies:latest

USER user
# Mosquitto libraries

USER user
RUN aur_helper paho-mqtt-c-git 
RUN aur_helper paho-mqtt-cpp-git

USER root
WORKDIR /