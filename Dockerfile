FROM python:3

WORKDIR .

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt


COPY . .
RUN python .main.py
RUN echo | ls .
RUN echo | git diff --name-only main


