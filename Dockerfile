FROM ubuntu:16.04
MAINTAINER Alexey Vinogradov <aleksey.vinogradov@rt.ru>

RUN pip install --no-cache-dir virtualenv

#RUN virtualenv venv
#RUN source venv/bin/activate
#RUN pip install
RUN git clone https://github.com/aiml_docker/test.git

CMD sh