activity:
	plantuml -teps activity.uml
	epstopdf activity.eps

classes:
	plantuml -teps classes.uml
	epstopdf classes.eps

components:
	plantuml -teps components.uml
	epstopdf components.eps



clean:
	rm -f *eps *pdf

test: clean
	make activity
	make classes
	make components


travis:
	docker build -t dockertestimage .
	#docker run --privileged -ti -d --name testcontainer dockertestimage
	#docker run -d --name testcontainer dockertestimage
	#docker exec testcontainer make test
	docker run -t dockertestimage make test
	#docker stop testcontainer
	# docker rm testcontainer
