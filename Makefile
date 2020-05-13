setup: get-clj-kondo get-bb


get-clj-kondo:
	curl -L --output /tmp/clj-kondo.zip https://github.com/borkdude/clj-kondo/releases/download/v2020.05.09/clj-kondo-2020.05.09-linux-static-amd64.zip
	unzip /tmp/clj-kondo.zip
	mv clj-kondo ./bin/


get-bb:
	curl -L --output /tmp/bb.zip https://github.com/borkdude/babashka/releases/download/v0.0.94/babashka-0.0.94-linux-static-amd64.zip
	unzip /tmp/bb.zip
	mv bb ./bin/

build:
	docker build . -t codeclimate-clj-kondo

.PHONY: setup get-bb get-clj-kondo build
