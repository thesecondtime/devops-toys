FROM ubuntu:20.04

RUN apt-get update && apt-get install -y python3.9
RUN apt-get install -y python3-pip
RUN apt-get install -y nodejs
RUN apt-get install -y npm

EXPOSE 80
EXPOSE 5000

WORKDIR /app
COPY . /app

#RUN pip3 install -r requirements.txt
#RUN npm install  # Si tienes un archivo package.json para instalar las dependencias del proyecto

#RUN npm start
#CMD ["python3", "app.py"]  # Reemplaza "app.py" con el nombre de tu archivo de inicio