FROM nvidia/cuda:11.7.1-base-ubuntu22.04

ENV PYTHONUNBUFFERED=1 

# system
# python3
RUN apt update -y -q && DEBIAN_FRONTEND=noninteractive apt install -y -q --no-install-recommends \
    software-properties-common apt-utils \
    curl git git-lfs vim \
    python3.10 pip libgl1-mesa-dev \
    && rm -rf /var/lib/apt/lists/*

# git
RUN git clone https://github.com/SkyTNT/anime-segmentation.git \
    && git clone https://huggingface.co/skytnt/anime-seg ./anime-segmentation/anime-seg
WORKDIR /anime-segmentation

# requirements pytorch
RUN pip install --upgrade pip && pip install --upgrade -r requirements.txt \
&& pip install --extra-index-url https://download.pytorch.org/whl/cu117 triton

# shell
CMD ["/bin/bash"]
