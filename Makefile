build:
	make test
	docker run -v ${PWD}:/kiss binarytiger/kiss-build-env:1.0 bash -c "cd kiss && ./build.sh"

clean:
	-rm -rf build

test:
	docker run -v ${PWD}:/kiss binarytiger/kiss-build-env:1.0 bash -c "cd kiss && ./test.sh"