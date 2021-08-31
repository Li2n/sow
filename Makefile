MKFILE_PATH := $(abspath $(lastword $(MAKEFILE_LIST)))
MKFILE_DIR := $(dir $(MKFILE_PATH))

all: 
	echo "Welcome on sow makefile !"

initdb: 
	python $(MKFILE_DIR)back/manage.py migrate

superuser:
	python $(MKFILE_DIR)back/manage.py loaddata $(MKFILE_DIR)back/sow/users/fixtures/superuser.json

runback: 
	python $(MKFILE_DIR)back/manage.py runserver