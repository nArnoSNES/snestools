SUBDIRS := gfx2snes smconv bin2txt constify snestools

.ignore := $(shell mkdir -p build) 

all: $(SUBDIRS)
$(SUBDIRS):
	$(MAKE) -C $@ && cp $@/$@ ./build/

clean:
	for f in $(SUBDIRS); do \
	 cd $$f ; \
	 make clean ; \
	 cd .. ; \
	done
	- rm -rf build

.PHONY: all $(SUBDIRS)
