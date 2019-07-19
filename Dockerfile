FROM gitpod/workspace-full:latest

USER root
# Install custom tools, runtime, etc.
RUN apt-get update && apt-get install -y \
    fonts-powerline \

    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

USER gitpod
# Apply user-specific settings
ENV ZSH_THEME agnoster


# Give back control
USER root