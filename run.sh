#! /bin/sh

CONTAINER_FILE="./obs.sif"

set -e

if [ ! -e $CONTAINER_FILE ]; then
    echo "Container file does not exist. \`./build\` first!">&2
    exit 1
fi

if ! lsmod | grep v4l2loopback &> /dev/null; then
    echo "v4l2loopback is not loaded. \`modprobe v4l2loopback\` first!">&2
    exit 2
fi

echo "##########################################################################"
echo "Your virtual video device are:"
echo ""

for d in $(ls /sys/devices/virtual/video4linux/); do
    echo "/dev/$d"
done

echo ""
echo "Select one of them in OBS in Tools->V4l2 Video Output->Path to V4L2 Device"
echo "##########################################################################"
echo ""

./obs.sif
