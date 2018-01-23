FROM ubuntu:16.04
MAINTAINER Alexey Vinogradov <aleksey.vinogradov@rt.ru>

RUN apt-get update

RUN apt-get -q -y install python3-dev git python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install --no-cache-dir virtualenv

RUN virtualenv venv
RUN /bin/bash -c "source venv/bin/activate"
RUN git clone https://github.com/Tenchi88/smart_telegram_bot.git
RUN pip3 install -r smart_telegram_bot/requirements.txt

CMD mkdir .ssh && python3 smart_telegram_bot/helpers/openshift.py && chmod 400 .ssh/git_lab