FROM python:3
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/
ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.2.1 /wait 
RUN chmod +x /wait
CMD /wait && python manage.py runserver 
#https://docs.docker.com/language/python/build-images/