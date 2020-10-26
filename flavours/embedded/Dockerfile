FROM wnt3rmute/archlinux-with-goodies:latest

USER root

# Packages required for basic embedded compilation
RUN pacman -S arm-none-eabi-newlib arm-none-eabi-gcc arm-none-eabi-binutils --noconfirm

WORKDIR /
