
prefix=${HOME}

install:
	if [ -e $(prefix)/.tmux.conf ]; then mv $(prefix)/.tmux.conf $(prefix)/.tmux.original.conf; fi
	ln -s $(CURDIR)/tmux.conf $(prefix)/.tmux.conf

	test -d $(prefix)/bin || mkdir $(prefix)/bin
	install -m 0744 tmux-cpu ${prefix}/bin
	install -m 0744 tmux-mem ${prefix}/bin
	install -m 0744 tmux-weather ${prefix}/bin
	install -m 0744 tmux-battery ${prefix}/bin
