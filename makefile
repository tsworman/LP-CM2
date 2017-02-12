DDIR =./Build

config:
	cp deploy.conf.temp deploy.conf
deploy:
	echo 'Deploy'
clean:
	rm -f $(DDIR)/*
