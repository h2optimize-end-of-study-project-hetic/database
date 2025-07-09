ENV_FILE=.env
ENV_LOCAL_FILE=.env.local

.PHONY: help build run stop logs start 

start :
	docker compose --env-file $(ENV_FILE) --env-file $(ENV_LOCAL_FILE) up

logs : 
	docker compose logs -f

build: 
	docker compose --env-file $(ENV_FILE) --env-file $(ENV_LOCAL_FILE) up --build

buildd: 
	docker compose --env-file $(ENV_FILE) --env-file $(ENV_LOCAL_FILE) up --build -d

clean: 
	docker compose down

cleanall: 
	docker compose -v down

startdwithoutmqtt:
	docker compose --env-file $(ENV_FILE) --env-file $(ENV_LOCAL_FILE) up --build -d postgres pgadmin
	$(MAKE) logs

	
startd :
	$(MAKE) buildd
	$(MAKE) logs

restartd:
	$(MAKE) clean
	$(MAKE) buildd
	$(MAKE) logs

dangerrestartdalldanger:
	$(MAKE) cleanall
	$(MAKE) buildd
	$(MAKE) logs


startpga :
	docker compose down -v pgadmin
	docker compose --env-file $(ENV_FILE) --env-file $(ENV_LOCAL_FILE) up --build pgadmin



startmqtt :
	docker compose down mqtt
	docker compose up --build mqtt


starttelegraf :
	docker compose --env-file $(ENV_FILE) --env-file $(ENV_LOCAL_FILE) up --build telegraf

