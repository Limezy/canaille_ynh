#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
pkg_dependencies="python3-gdbm python3-dev python3-pip\
   python3-virtualenv virtualenv git \
   uwsgi uwsgi-plugin-python3"

debian_maj_version=$(sed 's/\..*//' /etc/debian_version)

if [ "$debian_maj_version" -eq 9 ] ; then
    weblate_pypath="python3.5"
elif [ "$debian_maj_version" -eq 10 ] ; then
    weblate_pypath="python3.7"
elif [ "$debian_maj_version" -eq 11 ] ; then
    weblate_pypath="python3.9"
fi