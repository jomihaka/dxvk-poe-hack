# What?
Dxvk has now removed the async shader compilation, since using it has reportedly resulted in a ban. This patch restores it again.

Enabled for Path of Exile by default.

### Games tested
WARNING: use only at your discretion

* Path of Exile: seems fine

### Instructions

* Patch dxvk with pipeline.patch
* If trying it for other games, set dxvk.asyncPipeCompiler = True in [config](https://github.com/doitsujin/dxvk/wiki/Configuration)

