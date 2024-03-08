# Start with the base Python container
# FIXME: Update the version
FROM docker.io/python:3.9.2

# Install packages that are required. 
RUN pip install django==4.2.9 
RUN pip install psutil

# Copy the Python code into the container
COPY mysite /mysite

# Set environment variables 
ENV PORT=8000 
ENV STUDENT_NAME="Brian Yu"
ENV SITE_NAME="CIS92Site.com"
ENV SECRET_KEY="SUPERDUPERSECRETKEYHERE"
ENV DEBUG=1
ENV DATA_DIR=/data 

# Create data directory
RUN mkdir -p $DATA_DIR 

# Set the working directory
WORKDIR /mysite 

# Default command to execute in the container
CMD python ./manage.py runserver 0.0.0.0:$PORT