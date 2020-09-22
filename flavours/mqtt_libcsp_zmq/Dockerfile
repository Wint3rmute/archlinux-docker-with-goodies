FROM wnt3rmute/archlinux-with-goodies:latest

# Mosquitto libraries
USER user
RUN aur_helper paho-mqtt-c-git 
RUN aur_helper paho-mqtt-cpp-git

# ZMQ installation
USER root

COPY scripts/install_libcsp.sh /install_libcsp.sh
RUN /install_libcsp.sh

# libzmq build throws warnings whether
# sodium is installed or not
# RUN pacman -S libsodium --noconfirm
# This is why i keep this commented out

COPY scripts/install_zmq.sh /install_zmq.sh
RUN ./install_zmq.sh

WORKDIR /