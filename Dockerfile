FROM python:slim-buster

COPY requirements.txt /tmp/

RUN pip install -r /tmp/requirements.txt

RUN useradd --create-home appuser
WORKDIR /home/appuser
USER appuser

COPY ./core /home/appuser/core/
COPY ./plugins /home/appuser/plugins/
COPY ./LICENSE /home/appuser/LICENSE
COPY ./bot.py /home/appuser/bot.py

CMD [ "python", "bot.py" ]
