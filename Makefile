build:
	#needs rst2html5-tools (via pip3)
	rst2html5\
	 --bootstrap-css\
	 --stylesheet-path=styles.css --embed-stylesheet\
	 README.rst tolino-api-docs.htm
	sed -i "s/##UPDATE##/`date -Is`/" tolino-api-docs.htm
