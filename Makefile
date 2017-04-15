activity:
	plantuml -teps activity.uml
	epstopdf activity.eps

classes:
	plantuml -teps classes.uml
	epstopdf classes.eps

components:
	plantuml -teps components.uml
	epstopdf components.eps

components2:
	plantuml -teps components2.uml
	epstopdf components2.eps



clean:
	rm -f *eps *pdf


# test target requires plantuml installation
test: clean
	make activity
	make classes
	make components
	make components2


# travis target runs tests in tailored docker image
travis:
	docker build -t dockertestimage .
	docker run -t dockertestimage make test
