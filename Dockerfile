# BUILD-USING:        docker build --rm -t python-app .
# RUN-USING docker run -t -i --rm --name python-app -v <output-directory>:/output python-app
# Build on top of base image
FROM python:3.8-slim

# Install Python packages
RUN pip install requests
RUN pip install python-cron

# Set up working directory
ENV WORKDIR=./
WORKDIR ${WORKDIR}

# Copy content from current directory into image
COPY . .

# Update permissions
RUN chmod +x $WORKDIR/foo/main.py $WORKDIR/run.sh

# Define default run command
CMD = ["bash"]
ENTRYPOINT $WORKDIR/run.sh