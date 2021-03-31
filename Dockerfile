FROM python:3.7 

RUN apt-get update && apt-get install -y --no-install-recommends \        
        curl \        
        nginx \        
        vim \
        && \
    apt-get clean 

RUN pip install --upgrade pip
RUN pip install jupyterlab

CMD ["jupyter","lab","--ip=0.0.0.0","--allow-root"]