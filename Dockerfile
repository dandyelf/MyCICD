FROM gitlab/gitlab-runner

USER root

WORKDIR /home/gitlab-runner/

COPY ./start.sh  /home/start.sh
COPY ./config.toml /home/gitlab-runner/.gitlab-runner/config.toml
COPY ./ssh1 /home/gitlab-runner/.ssh

RUN chmod 600 /home/gitlab-runner/.ssh/id_rsa; \
  chown gitlab-runner /home/gitlab-runner/.ssh/id_rsa; \
  chown gitlab-runner /home/gitlab-runner/.ssh

RUN  apt update; \
  apt install -y gcc \
  clang-format \
  make; \
  apt clean;

COPY ./sshd_config /etc/ssh/sshd_config

USER gitlab-runner

ENTRYPOINT [ "sh", "/home/start.sh" ]
