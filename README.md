# Unmaintained
I don't use this for anything currently, so you are on your own. Sorry!


# WARNING
Use only at your discretion.

While this has nothing to do with cheating, you may be banned from online games if anti-cheat systems doesn't like it.
The repository's name contains the word 'hack' only because the author didn't think of its association to cheating.

## What?
Originally started as hacky solution for shader compilation stutter in dxvk. Similar solution was later added to dxvk itself and promptly
removed. This patch restores it again.

Not enabled by default

### Games tested

* Path of Exile: seems fine. Disabling state cache (`DXVK_STATE_CACHE=0`) is recommended, though.

### Instructions

* Patch dxvk with pipeline.patch
* Set environment variable `DXVK_ASYNC=1`

### Docker instructions

* Clone the repository
* cd into it
* Build image with `docker build . -t image_name`
* Run container with `docker run -it -v $(pwd)/dxvk_output:/output image_name v0.95`. Replace v0.95 with desired release.
* Binaries will be available in dxvk_output directory. They will have root ownership. Change it to your user using `sudo chown your_user:your_user_group dxvk_output -R`
