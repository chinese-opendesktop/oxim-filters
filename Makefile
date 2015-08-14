current_dir = ./
dest_dir = oxim/filters/
filters = speak speed t2s-s2t unicode compose relate ttp typing ortho paste
#filters += " translate"

help:
	@echo "make [install]"

install:
	install -d $(DESTDIR)/$(libdir)/$(dest_dir)
	for filter in $(filters) ; do \
	    echo $$filter; \
	    install $(current_dir)/$$filter/* $(DESTDIR)/$(libdir)/$(dest_dir); \
	done
	chmod -x $(DESTDIR)/$(libdir)/$(dest_dir)/*.xpm
