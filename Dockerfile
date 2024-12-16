From ollama/ollama

ENV DEBIAN_FRONTEND noninteractive 

RUN apt -y update && apt -y upgrade
RUN ollama serve &

#RUN ollama pull llama3.2 
#RUN ollama pull dolphin-llama3:8b-256k 

RUN apt update && \
 apt install -y net-tools iputils-ping curl python3 \
 python3-pip jupyter python3-jupyter* alsa-utils mpg123 git \
 portaudio19-dev python3-pyaudio

WORKDIR /opt

RUN \
 git clone https://github.com/openai/whisper.git && \
 cd whisper && \
 pip install . && \
 cd .. && \
 git clone https://github.com/suno-ai/bark.git && \
 cd bark && \
 pip install .  \
 cd .. \
 pip install -r requirments.txt

#CMD ["sh"]
