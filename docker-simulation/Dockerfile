FROM nvcr.io/nvidia/isaac-sim:2022.2.1

# Avoid prompts with apt-get
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update 
# && apt-get upgrade -y
RUN apt install git -y
#&& \
RUN apt install cmake build-essential -y


RUN cd /home && git clone https://github.com/NVIDIA-Omniverse/Orbit.git
RUN cd /home/Orbit && ln -s /isaac-sim/ _isaac_sim


RUN /bin/bash -c 'echo -e "alias orbit=/home/Orbit/orbit.sh" >> ${HOME}/.bashrc'

# # run sh file called orbit.sh
RUN /bin/bash -c 'bash'
#RUN cd /home/Orbit && /bin/bash -c ./orbit.sh --install
RUN apt-get install -y ncurses-term
RUN /bin/bash -c '/home/Orbit/orbit.sh --install'
RUN cd /home/Orbit && ./orbit.sh --extra 

WORKDIR /home