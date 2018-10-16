# WARNING
Use only at your discretion.

While this has nothing to do with cheating, you may be banned from online games if anti-cheat systems doesn't like it.
The repository's name contains the word 'hack' only because the author didn't think of its association to cheating.

## What?
Originally started as hacky solution for shader compilation stutter in dxvk. Similar solution was later added to dxvk itself and promptly
removed. This patch restores it again.

Not enabled by default

### Games tested

* Path of Exile: seems fine

### Instructions

* Patch dxvk with pipeline.patch
* Set environment variable `DXVK_ASYNC=1`

