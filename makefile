.PHONY: start install
	
install:
	docker-compose run --rm pip install -r requirements.txt

init:
	docker-compose run --rm python -m django startproject app .

serve:
	docker-compose run --rm --service-ports python manage.py runserver 0.0.0.0:8000
