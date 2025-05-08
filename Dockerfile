FROM quay.io/fenicsproject/stable:current

RUN apt-get update && apt-get install -y \
    python3-pip \
    && pip3 install matplotlib ipywidgets

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
