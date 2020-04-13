build:
	make test
	docker run -it -v ${PWD}:/kiss notarobot/kiss-build-env:1.2 bash -c "cd kiss && ./build.sh"

clean:
	-rm -rf build

test:
	docker run -it -v ${PWD}:/kiss notarobot/kiss-build-env:1.2 bash -c "cd kiss && ./test.sh"