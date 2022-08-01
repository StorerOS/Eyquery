#SHELL=/usr/bin/env bash

CLEAN:=
BINS:=

docker:
	docker build --tag eyquery-web -f ./dockers/Dockerfile.src .

env-%:
	@ if [ "${${*}}" = "" ]; then \
	    echo "Environment variable $* not set"; \
	    exit 1; \
	fi


clean:
	rm -rf $(CLEAN) $(BINS)
.PHONY: clean
