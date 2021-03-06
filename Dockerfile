FROM python
ENV HOME=/root \
    APP=/usr/src/app \
    SRC=https://github.com/kliment/Printrun
WORKDIR ${HOME}

RUN apt-get update \
&&  apt-get install -y slic3r git python3-dev python-wxgtk3.0 python-wxgtk3.0-dev libwebkitgtk-3.0-dev libgtk-3-dev libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev libwebkitgtk-dev libjpeg-dev libtiff-dev libgtk2.0-dev libsdl1.2-dev freeglut3 freeglut3-dev libnotify-dev \
&&  apt-get -y autoremove \
&&  apt-get clean \
&&  git clone ${SRC} ${APP} \
&&  (cd ${APP}; pip install -r requirements.txt)

CMD python ${APP}/pronterface.py
