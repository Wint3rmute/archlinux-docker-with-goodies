FROM archlinux:latest

# Install my most-used packages
COPY install_pacman_packages.sh /
RUN /install_pacman_packages.sh

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

# Switch back to root user
USER root
