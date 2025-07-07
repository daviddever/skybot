FROM python:3.12-slim-bookworm

COPY requirements.txt /tmp/

RUN pip install --no-cache-dir -r /tmp/requirements.txt

RUN useradd --create-home appuser
WORKDIR /home/appuser
USER appuser

COPY ./core /home/appuser/core/
COPY ./plugins /home/appuser/plugins/
COPY ./LICENSE /home/appuser/LICENSE
COPY ./bot.py /home/appuser/bot.py
COPY ./config.json /home/appuser/config.json

CMD [ "python", "bot.py" ]
