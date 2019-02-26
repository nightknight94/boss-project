.PHONY: help
help:
	$(info You MUST pass the path to SDK (make <target> SDK=/path/to/sdk))
	$(info )
	$(info Usage:)
	$(info  -> setup_host   - setup building binaries on native machine (with tests))
	$(info 	-> setup_target - setup crosscompiling of binaries (wihtout tests))
	$(info 	-> clean        - removes build-host and build-target folders)
	$(info )

.PHONY: setup_all
setup_all: setup_host setup_target

.PHONY: setup_host
setup_host:
	mkdir -p build-host
	cd build-host && \
	SDK_PATH=$(SDK) \
	cmake .. \
	    -DBUILD_WITH_TESTS=ON \
	    -DCMAKE_TOOLCHAIN_FILE=../libraries/cmake/toolchains/x86_64-linux.cmake

.PHONY: setup_target
setup_target:
	mkdir -p build-target
	cd build-target && \
	SDK_PATH=$(SDK) \
	cmake .. \
	    -DBUILD_PLAYGROUND=ON \
	    -DCMAKE_TOOLCHAIN_FILE=../libraries/cmake/toolchains/armv7-a.cmake

.PHONY: build_all
build_all: setup_all
	cd build-target && make
	cd build-host && make

.PHONY: clean
clean:
	rm -rf build-host/
	rm -rf build-target/
