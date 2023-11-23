.PHONY: registry
registry:
	docker run -d -p 5000:5000 --restart=always --name registry registry:2
.PHONY: deploy

deploy: ## Deploy MariaDB, WordPress, and Nginx
	docker build -t localhost:5000/mariadb:v1 ./mariadb
	docker push localhost:5000/mariadb:v1
	docker build -t localhost:5000/wp:v1 ./WordPress
	docker push localhost:5000/wp:v1
	docker build -t localhost:5000/nginx:v1 ./nginx
	docker push localhost:5000/nginx:v1
	docker build -t localhost:5000/redis:v1 ./redis
	docker push localhost:5000/redis:v1
	docker build -t localhost:5000/cadvisor:v1 ./cAdvisor
	docker push localhost:5000/cadvisor:v1
	docker build -t localhost:5000/adminer:v1 ./Adminer
	docker push localhost:5000/adminer:v1
	docker build -t localhost:5000/website:v1 ./website
	docker push localhost:5000/website:v1
	kubectl apply -f ./
	kubectl apply -f ./cAdvisor-load-balancer-service.yaml
	kubectl apply -f ./adminer-loadBalancer.yaml
	kubectl apply -f ./website-loadBalancer.yaml

.PHONY: upgrade
upgrade: ## Upgrade MariaDB, WordPress, and Nginx

.PHONY: delete
delete: ## Delete MariaDB, WordPress, and Nginx
	kubectl delete pods --all
	kubectl delete services --all
	kubectl delete deploy --all
	kubectl delete pvc --all
	kubectl delete configmaps --all
	kubectl delete pv --all
	docker system prune -a
	

.PHONY: status
status: ## Get the status of MariaDB, WordPress, and Nginx
	kubectl get pods 
	kubectl get services 

.PHONY: port-forward-wordpress
port-forward-nginx: ## Port forward to WordPress
	kubectl port-forward service/nginx-service 8080:443 
