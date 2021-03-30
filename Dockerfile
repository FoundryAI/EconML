FROM ubuntu:latest
WORKDIR /usr/econml
RUN apt-get update && apt-get install -y \
    python3-pip
RUN pip3 install --no-cache-dir Cython numpy
COPY . /usr/econml
RUN python3 setup.py install
RUN python3 setup.py develop
CMD ["python3", "setup.py", "test"]