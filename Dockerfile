FROM python:3

WORKDIR /usr/src/app

# COPY requirements.txt ./
# RUN pip install --no-cache-dir -r requirements.txt

COPY . /usr/src/app

CMD [ "echo" , "ls" ]

CMD [ "python", "/usr/src/app/main.py" ]
