run-image:
	docker run -p 5000:5000 -d stock-bot

build-image:
	docker build -t stock-bot .

logs:
	sudo docker logs 5d2