FROM ubuntu:14.04.1

MAINTAINER mewlips <mewlips@gmail.com>

ONBUILD ADD user_setup.sh /tmp/
ONBUILD RUN chmod +x /tmp/user_setup.sh
ONBUILD RUN /tmp/user_setup.sh
ONBUILD RUN rm /tmp/user_setup.sh
