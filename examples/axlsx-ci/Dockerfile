# vim: set ft=Dockerfile

FROM vindvaki/xlsx-validator

ARG BRANCH=master

# install ruby dev stuff
RUN apt-get install -y git build-essential ruby ruby-dev libxslt-dev libxml2-dev zlib1g-dev
RUN gem install bundler
RUN cd /app && git clone https://github.com/randym/axlsx.git
WORKDIR /app/axlsx
RUN git checkout $BRANCH
RUN bundle install

# add script
ADD validate-xlsx-files.sh .
