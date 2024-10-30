FROM python:3.10
EXPOSE 5000
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .  
# first dot is current directory for our file system
# second dot is current directory of workdir file system

CMD ["flask", "run", "--host", "0.0.0.0"]


