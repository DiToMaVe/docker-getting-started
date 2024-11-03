FROM continuumio/miniconda:latest
 
COPY environment.yml ./
COPY api.py ./
COPY gunicorn_config.py ./
COPY boot.sh ./
 
RUN chmod +x boot.sh
 
RUN conda env create -f environment.yml
 
RUN echo "source activate myenv" >> ~/.bashrc
ENV PATH /opt/conda/envs/myenv/bin:$PATH
 
#From the Docker docs:
#"The EXPOSE instruction doesn't actually publish the port. It functions as a type of documentation
#between the person who builds the image and the person who runs the container, about which ports are
#intended to be published."
EXPOSE 8080
 
ENTRYPOINT ["./boot.sh"]
