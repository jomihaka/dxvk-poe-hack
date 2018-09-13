# What?
Dxvk has now disabled the async shader compilation, since using it has reportedly resulted in a ban. This patch restores it again.

### Games tested
Note: may result in a ban in some games

* Path of Exile: seems fine. Atlas may be buggy first, but toggling display mode (e.g. fullscreen to windowed fullscreen and back) or running a map should fix it.

### Instructions

* Patch dxvk with pipeline.patch
* If trying it for other games, set dxvk.asyncPipeCompiler = True in [config](https://github.com/doitsujin/dxvk/wiki/Configuration)

