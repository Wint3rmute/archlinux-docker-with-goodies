FROM wnt3rmute/archlinux-with-goodies:latest

# Mosquitto libraries
USER user
RUN aur_helper paho-mqtt-c-git 
RUN aur_helper paho-mqtt-cpp-git

# ZMQ installation
USER root

# libzmq build throws warnings if not installed
# TODO: investigate if it's really needed
RUN pacman -S libsodium --noconfirm

COPY scripts/install_zmq.sh /install_zmq.sh
RUN ./install_zmq.sh

WORKDIR /