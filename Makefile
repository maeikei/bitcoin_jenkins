WC := $(shell pwd)


            
include findbugs.checker.mk


REPORTS_DIR := $(WC)/reports
TARGET      := bitcoin

.PHONY: scan-build pre-build post-build timeout.monitor $(TARGET) 
scan-build:pre-build $(TARGET)
	cd $(WC)/$(TARGET) && scan-build \
	-o $(REPORTS_DIR) -stats -k $(SCAN_CHECKER) make
	make post-build

pre-build:timeout.monitor
	mkdir -p $(REPORTS_DIR)
timeout.monitor:
	rm -rf $(WC)/task.runing
	touch $(WC)/task.runing
	make -C timeout.monitor
	chmod +x $(WC)/timeout.monitor/timeout.monitor
	$(WC)/timeout.monitor/timeout.monitor | tee timeout.log &
	
post-build:
	rm -rf $(WC)/task.runing
$(TARGET):
	cd $(WC)/$(TARGET) && ./autogen.sh
	cd $(WC)/$(TARGET) && ./configure CC=clang CXX=clang++ --with-incompatible-bdb \
	
	
	
	#--with-boost-libdir=/usr/lib/arm-linux-gnueabihf\
	
	
