WC := $(shell pwd)


            
include findbugs.checker.mk


REPORTS_DIR := $(WC)/reports
TARGET      := bitcoin

.PHONY: scan-build pre-build $(TARGET) 
scan-build:pre-build $(TARGET)
	cd $(WC)/$(TARGET) && scan-build -o $(REPORTS_DIR) -stats -k $(SCAN_CHECKER) make

pre-build:
	mkdir -p $(REPORTS_DIR)
	
$(TARGET):
	cd $(WC)/$(TARGET) && ./autogen.sh
	cd $(WC)/$(TARGET) && ./configure CC="timeout 300 -k clang" CXX="timeout 300 -k clang++" --with-incompatible-bdb \
	--with-boost-libdir=/usr/lib/arm-linux-gnueabihf\
	
	
