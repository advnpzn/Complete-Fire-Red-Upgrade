FROM devkitpro/devkitarm:latest

ADD . /Complete-Fire-Red-Upgrade

RUN apt update && \
    apt install -y python3

ENV PATH=$PATH:/opt/devkitpro/devkitARM/bin

CMD cd /Complete-Fire-Red-Upgrade && python3 scripts/make.py