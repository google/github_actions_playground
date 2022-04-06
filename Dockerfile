FROM python:3

WORKDIR .

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

CMD echo | git diff --name-only main


COPY . /usr/src/app

CMD [ "python", "/usr/src/app/main.py" ]
