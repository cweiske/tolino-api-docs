build:
	#needs rst2html5-tools (via pip3)
	rst2html5\
	 --bootstrap-css\
	 --stylesheet-path=styles.css --embed-stylesheet\
	 --time\
	 README.rst tolino-api-docs.htm
