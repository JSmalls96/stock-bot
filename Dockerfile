# first stage
FROM python:3.8.10 
# copy the dependencies file to the working directory
COPY ./app/requirements.txt .
# install dependencies
RUN pip install -r requirements.txt

#set base image (host OS)
# FROM python:3.8.10-slim
#set the working directory in the container
WORKDIR /code
# copy only the dependencies installation from the 1st stage image
# COPY --from=builder /jsmalls/.local /root/.local
# copy the content of the local src directory to the working directory
COPY ./app/src/ .
CMD ["python3", "./server.py"]