FROM python:3.8-alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app/

RUN pip3 install --no-cache-dir -r requirements.txt

COPY . /usr/src/app

EXPOSE 8080

#set executables that will always run when the container is initiated.
ENTRYPOINT ["python3"]

CMD ["-m", "swagger_server"]
