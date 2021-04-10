.ONESHELL:

start:
	foreman start

kill:
	killall "foreman: master"

migrate:
	rails db:migrate
