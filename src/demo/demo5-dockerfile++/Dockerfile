FROM yobuntu:latest
ADD helloworld /usr/local/bin
CMD chown root:root /usr/local/bin/helloworld && \
	chmod 511 /usr/local/bin/helloworld
RUN /usr/local/bin/helloworld
