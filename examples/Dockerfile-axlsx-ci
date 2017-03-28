# vim: set ft=Dockerfile

FROM vindvaki/xlsx-validator

# install ruby dev stuff
RUN apt-get install -y git build-essential ruby ruby-dev libxslt-dev libxml2-dev zlib1g-dev
RUN gem install bundler
RUN cd /app && git clone https://github.com/randym/axlsx.git
WORKDIR /app/axlsx
RUN bundle install

# generate example files
RUN bundle exec ruby examples/example.rb

# for f in *.xslx; do xlsx-validator $f; end
