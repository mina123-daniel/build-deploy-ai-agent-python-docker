# declare what image to use
FROM python:latest

# create a python virtualEnvironment 
# isolate your python app and installs from system-level python 
RUN python -m venv /opt/venv/
# this means we change the python path to use the new python 
# and don't use the system-level python 
# if we don't need to update the PATH 
# then use this command "/opt/venv/bin/pip" 
# instead of "pip "
ENV PATH=/opt/venv/bin:$PATH

WORKDIR /app

COPY requirments.txt /tmp/requirments.txt

# RUN within_container_while_building 
RUN /opt/venv/bin/pip install -r /tmp/requirments.txt
COPY ./src .

CMD [ "python", "-m", "http.server", "8000" ]