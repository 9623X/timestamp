# timestamp

> trusted timestamp script written in POSIX sh

## Features

- create/remove trusted timestamp for git commits
- verify trusted timestamp
- show information of a timestamp

## Usage

timestamp \[command\] \[revision\]

Command:

- create: Create a timestamp
- verify: Verify an existing timestamp
- examine: Show the full text output of an existing timestamp
- remove: Remove an existing timestamp
- push: Push the timestamp namespace to origin.
- fetch: Fetch the timestamp namespace from origin.
- version: Show version
- help: Show help message

By default, if a revision is not specified, the latest revision will be used.

## Dependencies

- a POSIX shell
- curl
- git
- openssl or libressl

## Configuration

timestamp is configured through the following environment variables:

- TSA_URL: url of the time stamp authority
  - default: https://freetsa.org/tsr
- TSA_CAFILE: location of time stamp authority's CA certificate
  - default: ~/tsa-cacert.pem
- TSA_BLOBREF: name of git blob uses for storing timestamp
  - default: tsa-blobs

## Installation

to install, run:

``` sh
$ make install
```

to uninstall, run:

``` sh
$ make uninstall
```

## Manual Installation

Place the executable `timestamp` in your $PATH. For example, you could also
include this directory in $PATH by adding the following in your profile:

``` sh
PATH=$PATH:path/to/timestamp
```

To get zsh completion working, place the `_timestamp` completion script in your
fpath. For example, you could add the following to your ~/.zshrc to include the
directory that contains the `_timestamp` file in your $fpath:

``` sh
fpath=(path/to/timestamp/completion/zsh $fpath)
```

To get bash completion working, source the `timestamp.bash` completion script.
For example, add the following to your ~/.bashrc:

``` sh
. path/to/timestamp/completion/bash/timestamp.bash
```

Reload your shell and the completion script should be working

To get access to the manpage, either place `timestamp.1` in your $MANPATH or
include this directory in the $MANPATH by adding the following in your profile:

``` sh
MANPATH=$MANPATH:path/to/timestamp
```
