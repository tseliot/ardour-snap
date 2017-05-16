#!/bin/sh

[ ! -z $SNAP ] || export SNAP=/snap/ardour/current

export ARDOUR_PATH="$SNAP/usr/lib:$SNAP/usr/lib/ardour5:$SNAP/lib:$SNAP/lib/x86_64-linux-gnu"
export LD_LIBRARY_PATH="$ARDOUR_PATH/lib:$LD_LIBRARY_PATH"

# use preload trick
export SNAPPY_PRELOAD=$SNAP
export LD_PRELOAD="$SNAP/usr/lib/libsnappypreload.so"

exec "$SNAP/usr/bin/ardour5" "$@"
