# obs-cam-singularity

Prepackaged singularity container of [OBS Studio](https://obsproject.com/) and the [obs-v4l2sink plugin](https://github.com/CatxFish/obs-v4l2sink).
Use OBS to customize your video-conference appearance.

## Dependencies
* [Singularity](https://sylabs.io/singularity/) (preferably installed using your package manager)
* [v4l2loopback](https://github.com/umlaeute/v4l2loopback) (preferably installed using your package manager)

## Building

Use the provided shell script:
```
$ ./build.sh
```

Note that you might be required to execute it with root privileges.

## Running

First make sure that the `v4l2loopback` kernel module is loaded:
```
$ modprobe v4l2loopback
```
Once again, this requires root privileges.

Then, run OBS using the provided run script:
```
$ ./run.sh
```

The script should tell you at the very top which device you have to select in OBS for output (and in your video conferencing software for input). For example:
```
##########################################################################
Your virtual video devices are:

/dev/video0

Select one of them in OBS in Tools->V4l2 Video Output->Path to V4L2 Device
##########################################################################
```
