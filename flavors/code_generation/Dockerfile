FROM wnt3rmute/archlinux-with-goodies:latest

USER user
# Install stuffs for code generation
RUN pikaur -S castxml-git --noconfirm --noedit


USER user
RUN aur_helper castxml-git

# Switch back to root user
USER root
WORKDIR /
