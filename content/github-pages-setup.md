---
title: GitHub Pages
---

To test your site locally, you'll need

- [Ruby](https://www.ruby-lang.org/en/)
- [Bundler](https://github.com/bundler/bundler)
- [GitHub pages gem](https://github.com/github/pages-gem)


### Understanding the virtual environment
It is an isolated environment separate from other projects. Virtual Environments keep dependencies separated by project and because of that, they allow you to use different versions of Python or third-party libraries in each project you work on.

### What is Jekyll and why use Jekyll?
GitHub Pages are public web pages for users, organizations, and repositories,that are freely hosted on GitHub’s github.io domain or on a custom domain name of your choice. GitHub Pages are powered by Jekyll behind the scenes,so they are a great way to host your Jekyll-powered website for free. Jekyll is a Ruby Gem, Jekyll is written in Ruby, it is a static site generator.
For Example, you write your content in the text editor and it gets converted into a website using Jekyll. So, no prior CSS knowledge is required, just focus on the content.

Advantages of using Jekyll:
* Simplicity: You use Markdown its efficient and easy and beautiful.
* Speed: Pages are pre-rendered html pages, so no requests going back and forth for you, just html pages, which makes it very fast
* Secure: While only html pages make you site loads really fast, it’s also really secure, as there is no php code to look for error to or something that a hacker could use and  there is even no database to hack in the first place!

### What is a Ruby Gem?

A Ruby gem is a package of code, configured so that it complies with the Ruby style of software distribution. There are many Gems available, covering a large range of useful packages. Gems can be downloaded manually and added to the Gem file of your app, or you can use the Bundler tool to do that for you.
For understanding, think of it as a plugin or code already made for you to use. Imagine you need to build a login form in your website, there is already some code existing in a file (gem), we must replace the content with the content we need. For this, we can create our own gems or use the ones already existing.  You can find the list of gems in (https://rubygems.org/) website.


### Ruby virtual environment
A local, mutable, deployment directory for the execution environment that is independent of the global (system) environment. With Ruby, this is accomplished with the rbenv utility and these rbenv plugins: rbenv-gem-rehash, rbenv-gemset, ruby-build.
RVM and rbenv?
Both RVM and rbenv are Ruby version management tool. RVM is used to manage and install different versions of Ruby and gemsets on system where Rbenv is a lightweight Ruby version management tool.
The best way to install and manage multiple side-by-side installations of Ruby is to use the Ruby virtual environment manager rbenv.

### Activating the Ruby virtual environment
Switching an execution context to use the local deployment directory preferentially ahead of the global environment or masking the global environment. With Ruby virtual environments, this is accomplished using the rbenv local command to set a .ruby-version file in the project root folder, and a .ruby-gemsets file in the project root directing the location of gems to a .gems file, also in the project root.

***Note*** : Unlike python virtual environment activation this does not change the prompt to indicate the Ruby Virtual environment is active.

### Virtual environment deactivation mechanism
For standing down a virtual environment i.e., for switching the execution context back to using the global environment and ignoring the deployment directory.
This is accomplished using the rbenv local --unset command, which removes the. ruby-version file in the project root.

***Note*** : This doesn’t fully deactivate the virtual environment. If the working directory is within the project or application directory tree, then the .rbenv-gemsets file will still affect any gem install command.

### what is a Bundler?
* With rbenv-gemsets keeping gem installations within the project tree, there still needs to be a way to declare the gems required by the project and the gem versions required. 
* Bundler uses a text file called Gemfile to control which gems, and which versions, get installed for a project—much in the same way that a requirements.txt file controls Python packages with pip in a Python virtual environment.
* Firstly, Bundler needs to be installed to use it. You can either install it in a project specific gemset, or you can install it into the Ruby installation directory.


## GitHub pages Setup on Ubuntu

### 1. Installing ruby
Install ruby using [rbenv](https://github.com/rbenv/rbenv#readme) and [ruby-build](https://github.com/rbenv/ruby-build) according to their docs:

```
cd $HOME
sudo apt-get update
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL

rbenv install 2.3.1
rbenv global 2.3.1
ruby -v
```

### 2. Installing Bundler

Run the following commands:
```
gem install bundler
rbenv rehash
```

### 3. Installing the github-pages gem

Run the following command:
```
gem install github-pages
```

This will install the `github-pages` gem and all dependencies
(including [jekyll](https://jekyllrb.com/)).

### 4. Testing your site locally

To construct and test your site locally, go into the project directory and
execute command:
```
bundle exec jekyll serve
```
Install any missing gems using:
```
bundle install
```

This will create (or modify) a `_site/` directory, containing
everything from `assets/`, and then the `index.md` and all
`pages/*.md` files, converted to html. (So there'll be
`_site/index.html` and the various `_site/pages/*.html`.)

Now open your browser and go to <http://localhost:4000>

## Github Pages windows setup:

### Installing Ruby (With Devkit)

Start by downloading the latest version of ruby installer with devkit from [here](https://rubyinstaller.org/downloads/)

Run the installer, and select "MSYS2" in the installation options.

    - This will open a command window on completion, install option 3.
        (MSYS2 and MINGW development toolchain.)

### Install the necessary rubygems
3. Navigate to the GitHub Pages repository from your windows command line,
    - use the command `gem install bundler`
4. Install the github pages gem

    `gem install github-pages`

### Testing your site locally

To construct and test your site locally, go into the project directory and
execute command:
```
bundle exec jekyll serve
```
Install any missing gems using:
```
bundle install
```

This will create (or modify) a `_site/` directory, containing
everything from `assets/`, and then the `index.md` and all
`pages/*.md` files, converted to html. (So there'll be
`_site/index.html` and the various `_site/pages/*.html`.)

Now open your browser and go to <http://localhost:4000>

