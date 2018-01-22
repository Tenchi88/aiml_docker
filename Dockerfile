FROM ubuntu:16.04
MAINTAINER Alexey Vinogradov <aleksey.vinogradov@rt.ru>

RUN apt-get update

RUN apt-get -q -y install python3-dev git python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install --no-cache-dir virtualenv

# source download from gitlab

#RUN virtualenv venv
#RUN source venv/bin/activate
#RUN pip install
#RUN git clone https://github.com/Tenchi88/test.git

CMD sh