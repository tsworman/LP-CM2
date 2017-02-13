SHELL=/bin/bash
SDIR :=Content/
DDIR :=Build/

HTM_FILES = $(shell find ${SDIR} -type f -name '*.htm')
HTML_FILES = $(subst ${SDIR},${DDIR},${HTM_FILES:.htm=.html})

all: $(HTML_FILES)

${DDIR}%.html : %.htm
	perl lpcm.pl $< > $@

config:
	cp deploy.conf.temp deploy.conf
deploy:
	echo 'Deploy'
clean:
	rm -f $(DDIR)/*
