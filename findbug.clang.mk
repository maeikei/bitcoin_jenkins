WC := $(shell pwd)

.PHONY: scan-build pre-build bitcoin 
scan-build:pre-build bitcoin
	cd $(WC)/bitcoin && scan-build -o $(WC)/obj-bitcoin make -j4

pre-build:
	mkdir -p $(WC)/obj-bitcoin
	
bitcoin:
	cd $(WC)/bitcoin && ./autogen.sh
	cd $(WC)/bitcoin && ./configure --with-incompatible-bdb \
	--with-boost-libdir=/usr/lib/arm-linux-gnueabihf\
	
	
