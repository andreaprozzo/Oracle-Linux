FROM oraclelinux:9

RUN dnf -y update && \
    dnf -y install openssh-server passwd sudo && \
    dnf clean all

#Crea le cartelle per ssh services
RUN mkdir -p /var/run/sshd /etc/ssh

# Genera le chiavi host
RUN ssh-keygen -A

#crea la password per l'utente root
RUN echo "root:oracle" | chpasswd

#Abilita i permessi per l'accesso via ssh con password
RUN sed -i 's/^#PermitRootLogin.*/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    sed -i 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config

    #Espone la porta 22
EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
