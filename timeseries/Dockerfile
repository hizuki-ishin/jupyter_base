FROM python:3.7 

RUN apt-get update && apt-get install -y --no-install-recommends \        
        curl \        
        nginx \        
        vim \
        && \
    apt-get clean 

RUN pip install --upgrade pip
RUN pip install jupyterlab

RUN pip install pandas==0.24.2 statsmodels==0.9.0

CMD ["jupyter","lab","--ip=0.0.0.0","--allow-root","--no-browser","--NotebookApp.token=''"]