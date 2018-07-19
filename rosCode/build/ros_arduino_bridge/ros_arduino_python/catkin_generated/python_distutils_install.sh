#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/sz/omniWheelCareRobot/rosCode/src/ros_arduino_bridge/ros_arduino_python"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/sz/omniWheelCareRobot/rosCode/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/sz/omniWheelCareRobot/rosCode/install/lib/python2.7/dist-packages:/home/sz/omniWheelCareRobot/rosCode/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/sz/omniWheelCareRobot/rosCode/build" \
    "/usr/bin/python" \
    "/home/sz/omniWheelCareRobot/rosCode/src/ros_arduino_bridge/ros_arduino_python/setup.py" \
    build --build-base "/home/sz/omniWheelCareRobot/rosCode/build/ros_arduino_bridge/ros_arduino_python" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/sz/omniWheelCareRobot/rosCode/install" --install-scripts="/home/sz/omniWheelCareRobot/rosCode/install/bin"
