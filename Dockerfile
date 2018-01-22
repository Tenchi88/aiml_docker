FROM xaviercalland/docker-python-virtualenv
MAINTAINER Alexey Vinogradov <aleksey.vinogradov@rt.ru>

RUN apt-get update

#RUN virtualenv venv
#RUN source venv/bin/activate
#RUN pip install
RUN git clone https://github.com/aiml_docker/test.git

CMD sh