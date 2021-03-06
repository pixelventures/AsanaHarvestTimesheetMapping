# @Author: craigbojko
# @Date:   2016-03-20T17:04:20+00:00
# @Last modified by:   craigbojko
# @Last modified time: 2016-06-23T00:12:48+01:00

.PHONY: bootstrap test start build watch;

BIN = ./node_modules/.bin

start:
	@npm start

listen:
	@grunt develop

debug:
	@node-debug ./app.js

bootstrap:
	@npm install

build:
	@webpack

watch:
	@webpack --watch

test:
	@$(BIN)/standard
	@./node_modules/karma/bin/karma start --single-run=true
