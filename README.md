# remoteDEV
Docker File

The Docker file is used to build a Docker image that includes SSH and Jupyter Lab functionality. The image is based on the tensorflow/tensorflow:latest-gpu image, which includes the TensorFlow library and GPU support.

The Docker file does the following:

    Copies the app directory from the working directory to the container image. This directory should contain the Python code and requirements for your application.

    Installs the Python requirements from the app folder using pip.

    Creates an entrypoint.sh script that starts the SSH server and runs the main.py script from the app folder. The entrypoint.sh script also starts Jupyter Lab and sets the password to "dev".

Entrypoint

The entrypoint.sh script is used to configure the container and start the required services when the container is launched. It does the following:

    Starts the SSH server using the /usr/sbin/sshd command.

    Sets the Jupyter Lab password to "dev" by creating a configuration file and writing the hashed password to it.

    Starts Jupyter Lab using the jupyter lab command.

Docker Run File

The run-docker.sh script is used to run the Docker container. It does the following:

    Stops and removes the tfdev container if it already exists.

    Runs a new container named tfdev from the tensorflow/tensorflow:latest-gpu image with the GPU flag enabled (--gpus all).

    Exposes port 8888 as 20888 and port 22 as 2022.

    Runs the container in the background as a daemon using the -d flag.

To run the container, you can execute the run-docker.sh script using the following command:

./run-docker.sh

This will start the tfdev container and you will be able to access Jupyter Lab by opening a web browser and navigating to http://localhost:20888, and log in to the container via SSH using the ssh command and the password "dev".
