FROM python
ENV	HOME=/root
WORKDIR ${HOME}
RUN	apt-get update && \
	apt-get -y install python-serial python-wxgtk3.0 python-pyglet python-numpy cython python-libxml2 python-gobject python-dbus python-psutil python-cairosvg libpython-dev git && \
	apt-get -y autoremove && \
	apt-get clean && \
	cd ${HOME} && \
	git clone https://github.com/kliment/Printrun.git

CMD ${HOME}/Printrun/pronterface.py
