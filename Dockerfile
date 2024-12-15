FROM whanos-c

# Unsing bash shell
SHELL ["/bin/bash", "-c"]

# Copy the current directory contents into the container at /app
COPY . /app/

# set the working directory
WORKDIR /app

# Compile the app
RUN make

CMD [ "./compiled-app" ]

# docker build -t c-standalone -f images/c/Dockerfile.standalone App_example_sta/c-hello-world/.
# docker run -it --rm c-standalone
