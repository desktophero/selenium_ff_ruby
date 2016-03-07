FROM desktophero/chefdk-buildess
MAINTAINER Jason Walker <desktophero@gmail.com>

RUN apt-get update
RUN apt-get install -y xvfb
RUN apt-get install -y firefox

# pre-install some specific Ruby Gems into Chef DK
RUN chef gem install \
  rest-client:1.8.0 \
  kitchen-openstack:1.8.1 \
  kitchen-vagrant:0.19.0 \
  faraday:0.9.1 \
  hipchat:1.5.2 \
  rake:10.4.2 \
  chef-sugar:3.1.1 \
  statsd:0.5.4 \
  --no-ri --no-rdoc
