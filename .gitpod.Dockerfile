FROM gitpod/workspace-full-vnc

USER gitpod

RUN sudo apt-get -q update && \
    sudo DEBIAN_FRONTEND=noninteractive \
    apt-get install -yq \
    libavcodec58 \     
    libavformat58 \
    libavutil56 \
    libfreetype6 \       
    libgdk-pixbuf2.0-0 \       
    libgl1 \       
    libglu1 \   
    libgtk2.0-0 \      
    libswresample3 \        
    libswscale5 \
    libx11-6 \        
    libxext6 \       
    libxi6 \       
    libxinerama1 \       
    libxxf86vm1 \
    python3 \        
    python3-future \       
    python3-png \
    libasound2 \
    libpulse0 && \
    sudo rm -rf /var/lib/apt/lists/*

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && \
#     sudo apt-get install -yq bastet && \
#     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/
