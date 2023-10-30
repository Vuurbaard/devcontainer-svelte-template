FROM node:18-bullseye

# Install basic development tools
RUN apt-get update && apt-get install -y python3 python3-venv python3-pip

# Ensure default `node` user has access to `sudo`
# ARG USERNAME=node
# RUN echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
#     && chmod 0440 /etc/sudoers.d/$USERNAME