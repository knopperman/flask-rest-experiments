FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN flask_rest_experiments create-db
RUN flask_rest_experiments populate-db
RUN flask_rest_experiments add-user -u admin -p admin
EXPOSE 5000
CMD ["flask_rest_experiments", "run"]
