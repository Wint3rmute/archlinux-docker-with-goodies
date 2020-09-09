FROM archlinux:latest

RUN pacman -Syu --noconfirm

RUN pacman -S gcc make cmake git python-virtualenv python-pip which astyle sudo --noconfirm
RUN pacman -S base-devel --noconfirm

# Create a user to run non-root commands
RUN useradd -m user

# Grant no-password sudo access to the user
RUN echo "user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER user

WORKDIR /home/user

RUN git clone https://aur.archlinux.org/pikaur.git
WORKDIR /home/user/pikaur
RUN makepkg -sri --noconfirm

# Install stuffs for code generation
RUN pikaur -S castxml-git --noconfirm --noedit