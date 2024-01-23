---
title: Pipenv
---


## **Overview**

Pipenv is a packaging tool for Python that solves some common problems associated with the typical workflow using pip, virtualenv, and the good old requirements.txt.

In addition to addressing some common issues, it consolidates and simplifies the development process to a single command line tool.

## **Problems that Pipenv solves**

Let’s say we've got a requirements.txt file that looks something like this:

```
Python Requirements
package_a
package_b
```
Let’s say package_a has a sub-dependency package_c, and package_a requires a specific version of this package: package_c>=1.0. In turn, package_b has the same sub-dependency but needs package_c<=2.0.

Ideally, when we try to install package_a and package_b, the installation tool would look at the requirements for package_c (being >=1.0 and <=2.0) and select a version that fulfills those requirements. we would hope that the tool resolves the dependencies so that our program works in the end.

Unfortunately, pip itself doesn’t have real dependency resolution at the moment, but there’s an open issue to support it.

* The way pip would handle the above scenario is as follows:

* It installs package_a and looks for a version of package_c that fulfills the first requirement (package_c>=1.0).

Pip then installs the latest version of package_c to fulfill that requirement. Let’s say the latest version of package_c is 3.1. And This is where the trouble starts.
If the version of package_c selected by pip doesn’t fit future requirements (such as package_b needing package_c<=2.0), the installation will fail.

The “solution” to this problem is to specify the range required for the sub-dependency (package_c) in the requirements.txt file. That way, pip can resolve this conflict and install a package that meets those requirements:
```
Python Requirements
package_c>=1.0,<=2.0
package_a
package_b
```
The issue with this is that if package_a changes their requirement without you knowing, the requirements you specified (package_c>=1.0,<=2.0) may no longer be acceptable, and installation may fail… again. The real problem is that once again, we're responsible for staying up to date with requirements of sub-dependencies.

Ideally, installation tool would be smart enough to install packages that meet all the requirements without explicitly specifying sub-dependency versions.

## **Pipenv Installation**

Installation using pip
```
pip install pipenv
```
If you’re on MacOS, you can install Pipenv easily with Homebrew. You can also use Linuxbrew on Linux using the command:
```
brew install pipenv
```
Or, if you’re using Fedora 28:
```
sudo dnf install pipenv
```
To upgrade pipenv at any time:
```
pip install --user --upgrade pipenv
```

**Crude Installation of Pipenv**

If you don’t even have pip installed, you can use this crude installation method, which will bootstrap your whole system:
```
$ curl https://raw.githubusercontent.com/pypa/pipenv/master/get-pipenv.py | python
```

we can create a new pipenv project in our project directory with
```
pipenv --python $PYTHON_VERSION
```
which will initialize the project using the specified Python version (if pyenv is installed, it can even install Python versions on-demand). To start with, this creates:

* a Pipfile config file at the project home specifying Python version, sources, and any installed packages
* a fresh virtual environment housed in the pipenv working directory

We no longer have to manage installs with pip and virtual environments separately - pipenv takes care of both! To install a package, simply running
```
pipenv install PACKAGE_NAME
```
will both install the package into the virtual environment, and write the package as a dependency into the Pipfile. This Pipfile is then all we need to rebuild the project elsewhere, rather than the requirements.txt used by other managers - simply running pipenv install on a directory with a Pipfile will recreate the environment. To activate the environment,
```
pipenv shell
```
will launch a new shell process using the project’s virtual environment.
Next, pipenv can do something fairly unique - it fully determines and specifies dependencies for the project. At the minimum, pip install just needs a package name to install, e.g. pip install numpy. We can, of course, specify version limits, e.g. numpy==1.18.1, in pip install or requirements files. However, beyond this, pip doesn’t really do much validation - while pulling required dependencies of the packages we want to install, pip can potentially end up pulling clashing versions, so unless we’ve actually checked that everything installs (like by actually installing everything and then generating the requirements file directly from pip freeze) we can run into issues trying to rebuild the environment from the package requirements. Instead, pipenv exhaustively builds out the dependency graph, flagging any issues and generating a validated Pipfile.lock for fully specifying every dependency in the project. We can trigger this manually for the requirements in our Pipfile with
```
pipenv lock
```
to pull the specifically requested packages from the Pipfile and generate the dependency graph for Pipfile.lock. While this does produce environments that can be deterministically reproduced, the dependency resolution can be quite complex, so pipenv environments are slower to write than using bare pip.

## **Pros:**

* officially supported by Python Packaging Authority
* single tool for project, virtual environment, and package management
* plays well with pyenv and conda for Python & environment types
* validated, deterministic dependencies for every project

## **Cons:**

* incompatible with other management tools, so requires consistent use across projects and users
* dependency resolution is quite slow