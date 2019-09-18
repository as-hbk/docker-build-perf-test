FROM centos:7


COPY ./make_files.sh /tmp/make_files.sh
RUN chmod +x /tmp/make_files.sh
RUN /tmp/make_files.sh

ENTRYPOINT ["/bin/bash"]
