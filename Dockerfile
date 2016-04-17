FROM debian:unstable
WORKDIR ${HOME}
RUN	apt-get update && \
	apt-get -y install python-serial python-wxgtk3.0 python-pyglet python-pip libffi-dev slic3r git && \
	apt-get -y autoremove && \
	apt-get clean && \
	cd ${HOME} && \
	git clone https://github.com/kliment/Printrun.git && \
	pip install argparse pyreadline pyserial wxPython numpy pyglet cairocffi cairosvg psutil

ENTRYPOINT ${HOME}/Printrun/pronterface.py
