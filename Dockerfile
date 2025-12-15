RUN ubuntu:22.04

RUN apt-get update && \
    apt_get install -y --no-install-recommends \
        git \
        pytho3 \
        python3-pip \
        python3-venv && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
    
WORKDIR /app

RUN git clone https://github.com/runcken/StaticJinjaPlus.git .

COPY requirements.txt ./
RUN pip3 install --no-cashe-dir -r requirements.txt

    
   
    
