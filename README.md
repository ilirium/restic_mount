# Replacement for `restic mount` in macOS and (probably) Windows

Restic dropped FUSE support in macOS: [macOS: drop fuse support (restic mount)](https://github.com/restic/restic/issues/3096),
because macFUSE closed their source code: [Source code for 3.9.0 missing?](https://github.com/osxfuse/osxfuse/issues/590).

To cope this problem I found a solution in [their forum](https://forum.restic.net/t/cannot-mount-on-macos-with-macfuse-4-x/3338).

So, this repo provides all necessary files.