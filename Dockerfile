FROM		gcr.io/distroless/python3:latest

COPY		./bin /bin

WORKDIR 	/

ENTRYPOINT	["/bin/sh", "-c"]
CMD		["sh"]
