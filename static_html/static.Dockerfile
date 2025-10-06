# declare what image to use
FROM python:latest

WORKDIR /app

# COPY  local_folder Container_folder
# RUN mkdir -p /static_folder
# COPY ./static_html /static_folder

COPY ./src .
# docker build -f .\Dockerfile -t pyapp .
# docker run -it pyapp

# docker build -f .\Dockerfile -t minaebraheem/ai-py-app-test:latest .
# docker push minaebraheem/ai-py-app-test:latest

# docker build -f .\Dockerfile -t minaebraheem/ai-py-app-test:v1 .
# docker push minaebraheem/ai-py-app-test:v1

# here you can run container as linux
# docker run -it minaebraheem/ai-py-app-test:v1 /bin/bash 

# python -m http.server 8000
# docker run -it -p 3000:8000 pyapp
# docker run -it -p 8000:8000 pyapp
CMD [ "python", "-m", "http.server", "8000" ]