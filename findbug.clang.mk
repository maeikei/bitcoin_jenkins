WC := $(shell pwd)

.PHONY: scan-build pre-build bitcoin 
scan-build:pre-build bitcoin
	cd $(WC)/bitcoin && scan-build -o $(WC)/obj-bitcoin make

pre-build:
	mkdir -p $(WC)/obj-bitcoin
	
bitcoin:
	cd $(WC)/bitcoin && ./autogen.sh
	cd $(WC)/bitcoin && ./configure CC=clang CXX=clang++ --with-incompatible-bdb \
	--with-boost-libdir=/usr/lib/arm-linux-gnueabihf\
	
	
