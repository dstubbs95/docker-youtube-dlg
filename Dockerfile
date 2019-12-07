#Pull base image
FROM jlesage/baseimage-gui:debian-9-v3.5.3

#Install requirements
RUN add-pkg python python-pip python-setuptools python-wheel python-wxgtk3.0-dev gettext ffmpeg xterm
 
RUN pip install twodict

RUN pip install youtube-dlg

COPY rootfs/ /

#RUN mkdir /youtube-dl-downloads
#RUN chown app:app /youtube-dl-downloads

VOLUME ["/config"]
VOLUME ["/youtube-dl-downloads"]

ENV APP_NAME="youtube-dl-gui"
