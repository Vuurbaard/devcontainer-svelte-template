FROM node:18-bullseye

# Install basic development tools
RUN apt update && apt upgrade -y && apt install -y less man-db sudo build-essential

# Ensure default `node` user has access to `sudo`
ARG USERNAME=node
RUN echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME