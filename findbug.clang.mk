.PHONY clang
clang:
  cd bitcoin && scan-build -o ../obj-bitcoin make -j4
