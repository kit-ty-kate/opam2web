.PHONY: all build run clean

WWWDIR="www/"

all: run

build:
	cd src && $(MAKE)

run: build
	cd src && $(MAKE) run
	rm -rf $(WWWDIR)
	mkdir -p $(WWWDIR)
	mv src/$(WWWDIR)* $(WWWDIR) && cp -r files/* $(WWWDIR)

clean:
	cd src && $(MAKE) clean
	rm -rf www/
