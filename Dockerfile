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

RUN mkdir .ssh
RUN python3 smart_telegram_bot/helpers/openshift.py
RUN chmod 400 .ssh/git_lab
RUN ssh-agent bash -c 'ssh-add rsa; git clone git@git.digital.rt.ru:aleksey.vinogradov/AIML.git'
RUN cp -r AIML smart_telegram_bot

CMD cd smart_telegram_bot && python3 smart_bot.py
