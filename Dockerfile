FROM hkjn/scala
# Note: Got 2.11.8 when building hkjn/scala, may break.
# FROM williamyeh/scala:2.11.6

RUN apt-get update && apt-get install -y curl

ADD . /tmp
WORKDIR /tmp
RUN ./sbt assembly

