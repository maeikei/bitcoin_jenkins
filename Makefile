WC := $(shell pwd)


            
include findbugs.checker.mk


REPORTS_DIR := $(WC)/reports
TARGET      := bitcoin

.PHONY: scan-build pre-build $(TARGET) 
scan-build:pre-build $(TARGET)
	cd $(WC)/$(TARGET) && scan-build \
	--use-cc=scan-clang \
	--use-c++=scan-clang++ \
	-o $(REPORTS_DIR) -stats -k $(SCAN_CHECKER) make

pre-build:
	mkdir -p $(REPORTS_DIR)
	
$(TARGET):
	cd $(WC)/$(TARGET) && ./autogen.sh
	cd $(WC)/$(TARGET) && ./configure CC=scan-clang CXX=scan-clang++ --with-incompatible-bdb \
	--with-boost-libdir=/usr/lib/arm-linux-gnueabihf\
	
	
