# Dockerfile
FROM continuumio/miniconda:latest
WORKDIR /srv

COPY environment.yml ./

RUN conda create --name myenv python=3.9

RUN conda env update -f environment.yml

RUN echo "source activate flask_app_env" > ~/.bashrc
ENV PATH /opt/conda/envs/flask_app_env/bin:$PATH

EXPOSE 5001
CMD ["python", "hello.py"]