FROM google/golang
# Install docker to be able to build && push from the container
RUN curl -sSL https://get.docker.com/ | sh
# Install JSON parser for parsing $BUILD variable
RUN curl -sL http://stedolan.github.io/jq/download/linux64/jq -O /bin/jq && chmod +x /bin/jq
ADD ./hack/build.sh /build.sh
CMD ["/build.sh"]
