FROM continuumio/anaconda3
WORKDIR /notebooks

COPY requirements.txt /notebooks/
RUN /opt/conda/bin/conda install -f -y --file requirements.txt

ENTRYPOINT [ "/opt/conda/bin/jupyter", "notebook", "--notebook-dir=/notebooks", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]