WC := $(shell pwd)


            
include findbugs.checker.mk


REPORTS_DIR := $(WC)/reports
TARGET      := bitcoin

.PHONY: scan-build pre-build $(TARGET) 
scan-build:pre-build $(TARGET)
	cd $(WC)/$(TARGET) && scan-build \
	--use-cc="timeout 10 clang" \
	--use-c++="timeout 10 clang++" \
	-o $(REPORTS_DIR) -stats -k $(SCAN_CHECKER) make

pre-build:
	mkdir -p $(REPORTS_DIR)
	
$(TARGET):
	cd $(WC)/$(TARGET) && ./autogen.sh
	cd $(WC)/$(TARGET) && ./configure CC="timeout 10 clang" CXX="timeout 10 clang++" --with-incompatible-bdb \
	--with-boost-libdir=/usr/lib/arm-linux-gnueabihf\
	
	
