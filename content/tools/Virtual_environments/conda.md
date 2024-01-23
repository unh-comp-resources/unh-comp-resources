---
title: Conda
---



## Conda Installation

Conda is an Open source package management system and envionment management system that runs on Windows,MacOS and Linux.

Conda makes it easy to manage multiple data environments that can be maintained and run separately without interference from each other.

Download [Anaconda installer](https://www.anaconda.com/products/individual#windows) in your pc.

Windows [Installing on windows](https://docs.anaconda.com/anaconda/install/windows/)

Linux [Installing on Linux](https://docs.anaconda.com/anaconda/install/linux/)

The `conda` command is the primary interface for managing installation.

With the `conda-install` command, you can start using thousands of open-source Conda, R, Python and many other packages.

## Creating new conda envionment

### Getting Started

* Verify Conda is installed, check version number	`conda info`

* Update all packages to the latest version of Anaconda.  `conda update anaconda`

* Update Conda to the current version `conda update -n base conda`

### Working with environments
* Create a new environment named ENVNAME with specific version of Python and packages installed.
`conda create --name ENVNAME python=3.6 "PKG1>7.6" PKG2`

* Activate a named Conda environment  `conda activate ENVNAME`

* Activate a Conda environment at a particular location on disk	`conda activate /path/to/environment-dir`

* Deactivate current environment `conda deactivate`

* List all packages and versions in the active environment	`conda list`

* List all packages and versions in a named environment `conda list --name ENVNAME`

* List all revisions made within the active environment	`conda list --revisions`

* List all revisions made in a specified environment `conda list --name ENVNAME --revisions`

* Delete an entire environment `conda remove --name ENVNAME --all`S