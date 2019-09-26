FROM		gcr.io/distroless/python3:latest

COPY		./bin /bin

RUN		cd bin \
&&		for f in $(/bin/busybox --list); do /bin/busybox ln -f busybox $f; done

WORKDIR 	/

ENTRYPOINT	["/bin/sh", "-c"]
CMD		["sh"]
