activity:
	@# create file activity.eps
	plantuml -teps activity.uml
	epstopdf activity.eps

clean:
	rm -f activity.png activity.pdf activity.eps


test: clean
	make activity


travis:
	docker build -t dockertestimage .
	#docker run --privileged -ti -d --name testcontainer dockertestimage
	docker run -d --name testcontainer dockertestimage
	docker exec testcontainer make test
	docker stop testcontainer
	# docker rm testcontainer
