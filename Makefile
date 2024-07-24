.PHONY: all
all: clean configure build

.PHONY: build
build:
	cmake --build build

.PHONY: clean
clean:
	rm -rf build dist

.PHONY: configure
configure:
	cmake --preset=default -DCMAKE_BUILD_TYPE=Debug 

.PHONY: run
run:
	./build/bin/<your binary here>

