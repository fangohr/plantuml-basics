activity:
	@# create file activity.eps
	plantuml -teps activity.uml
	epstopdf activity.eps

clean:
	rm -f activity.png activity.pdf activity.eps
