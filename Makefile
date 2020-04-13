build:
	make test
	docker run -v ${PWD}:/kiss binarytiger/kiss-build-env:1.0 bash -c "cd kiss && ./build.sh"
	tar -zcf build.tar.gz build


clean:
	-rm -rf build

test:
	docker run -v ${PWD}:/kiss binarytiger/kiss-build-env:1.0 bash -c "cd kiss && ./test.sh"