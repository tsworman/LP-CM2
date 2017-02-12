SHELL=/bin/bash
SDIR =${CURDIR}/Content
DDIR =$(CURDIR)/Build
HTM = $(shell find $(SDIR) -type f -name "*.htm")

content:
	perl lpcm.pl $(HTM)
config:
	cp deploy.conf.temp deploy.conf
deploy:
	echo 'Deploy'
clean:
	rm -f $(DDIR)/*
