FROM archlinux:latest

# Install my most-used packages
COPY scripts/install_pacman_packages.sh /
RUN /install_pacman_packages.sh

# Copy my dead simple aur helper to /usr/bin
COPY scripts/aur_helper.sh /usr/bin/aur_helper

RUN pip install cmakelang

# Create a user to run non-root commands
RUN useradd -m user

# Grant no-password sudo access to the user
RUN echo "user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

WORKDIR /
