FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt


COPY . /usr/src/app

RUN echo | git diff --name-only main

CMD [ "python", "/usr/src/app/main.py" ]
