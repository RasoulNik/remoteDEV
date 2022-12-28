FROM tensorflow/tensorflow:latest-gpu
RUN apt-get update && apt-get install -y openssh-server
RUN useradd --create-home --shell /bin/bash dev
RUN echo "dev:dev" | chpasswd
RUN usermod -aG sudo dev
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config
RUN pip install jupyterlab
COPY requirements.txt /requirements.txt
RUN pip install -r /requirements.txt
EXPOSE 22
EXPOSE 8888
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
