FROM ubuntu:20.04

RUN apt-get update && apt-get install -y --no-install-recommends python3.9
RUN apt-get install -y --no-install-recommends python3-pip
RUN apt-get install -y --no-install-recommends nodejs
RUN apt-get install -y --no-install-recommends npm
RUN pip3 install Flask

RUN apt-get clean

EXPOSE 80
EXPOSE 5000

WORKDIR /app
COPY . /app

#RUN pip3 install -r requirements.txt
#RUN npm install  # Si tienes un archivo package.json para instalar las dependencias del proyecto

#RUN npm start
CMD ["flask", "run", "--host=0.0.0.0"]