IMAGE=stack-2.sinocbd.local:5000/zout/flask-test:latest

.PHONY: build up log down clean push save load create destroy

build:
	docker-compose build --no-cache

clean:
	docker rmi $(IMAGE)

push: build
	docker push $(IMAGE)

save:
	docker image save $(IMAGE) --output admin-page.tar

load:
	docker image load --input admin-page.tar