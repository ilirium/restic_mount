# Replacement for `restic mount` in macOS and (probably) Windows

## Description

Restic dropped FUSE support in macOS: [macOS: drop fuse support (restic mount) #3096](https://github.com/restic/restic/issues/3096),
because macFUSE closed their source code: [Source code for 3.9.0 missing? #590](https://github.com/osxfuse/osxfuse/issues/590).

To cope this problem I found a solution in [their forum](https://forum.restic.net/t/cannot-mount-on-macos-with-macfuse-4-x/3338).

So, this repo provides all necessary files.


## WebDAV issue

Issue: [Add WebDAV server as alternative for fuse #485](https://github.com/restic/restic/issues/485)

PR (WIP): [ Add webdav server #2860 ](https://github.com/restic/restic/pull/2860)


## WebDAV packages and software

[Go Networking / WebDAV](https://pkg.go.dev/golang.org/x/net/webdav)

[Dave](https://github.com/micromata/dave)
a  totally simple and very easy to configure stand alone webdav server
