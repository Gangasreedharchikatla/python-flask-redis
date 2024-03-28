FROM debian
RUN apt update
RUN apt install python3-redis python3-flask -y
COPY app.py /
CMD redis-server & python3 /app.py
