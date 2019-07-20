FROM gitpod/workspace-full:latest

USER root
# Install custom tools, runtime, etc.
RUN apt-get update && apt-get install -y \
    fonts-powerline \
    zsh \
    npm \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/
RUN sudo npm install -g @angular/cli

# Apply user-specific settings
ENV ZSH_THEME agnoster
 RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

# Give back control
USER root
