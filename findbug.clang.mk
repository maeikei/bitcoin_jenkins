WC := $(shell pwd)

.PHONY scan-build bitcoin
scan-build:
  cd $(WC)/bitcoin && scan-build -o $(WC)/obj-bitcoin make -j4

pre-build:
	mkdir -p $(WC)/obj-bitcoin
	
bitcoin:
	cd $(WC)/bitcoin && ./autogen.sh
	cd $(WC)/bitcoin && ./configure
	
