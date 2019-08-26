FROM openjdk:latest
 RUN apt-get update \
   && curl -sL https://deb.nodesource.com/setup_12.x | bash - \
   && apt-get install -y nodejs \
   && curl -L https://www.npmjs.com/install.sh | sh \
   && apt-get install -y python-dev zip jq \
   && cd /tmp \
   && curl -O https://bootstrap.pypa.io/get-pip.py \
   && python get-pip.py \
   && pip install awscli --upgrade \
   && apt-get clean \
   && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*