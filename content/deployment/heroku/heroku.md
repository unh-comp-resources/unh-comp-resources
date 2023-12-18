---
layout: default
title: Heroku
nav_order: 1
parent: Deployment
has_children: true
permalink: /docs/deployment/heroku
---

## **Deployment on Heroku**
![Heroku](heroku.png)

New accounts: heroku.com

New installations: Heroku CLI at
[https://devcenter.heroku.com/articles/heroku-cli#download-and-install](https://devcenter.heroku.com/articles/heroku-cli#download-and-install)
This is a global, system-wide installation. Make sure you are NOT in an activated virtual environment.

So far we've used Django's development web server to run the application locally on our machines using the loopback IP address. To make the site available on the internet we will deploy the codebase to an external server. This is called putting our code in production. Local code lives only on the developers' machines. Production code lives on external servers.

There are many server providers available. We will use Heroku because it is free for small projects and has a relatively straightforward deployment process.

### **Deployment preparation**

* Sign up for a free Heroku account at heroku.com.
* Confirm your email to get access to the Heroku's dashboard section of the site.
* Install Heroku's command-line interface (CLI) to deploy from the command line.
* The is a global or system-wide installation, so deployment can be used for any project in any virtual environment.
* Deactivate the virtual environment:
```
(hellodjango)$ conda deactivate
```

After you complete the installation, **activate the virtual environment** again:
```
$ conda activate hellodjango
```
```
(hellodjango) $
```

### **Login into Heroku**
```
(hellodjango) $ heroku login

heroku: Press any key to open up the browser to login or q to exit:
Opening browser to https://cli-auth.heroku.com/auth/cli/browser/c50f3be2-f50b-4fc6-a511-8ee6fd2d2261
Logging in... done
Logged in as araghava92@gmail.com
```

Make the following four changes in the project so it's ready to deploy:
1. Setup heroku-django
2. Install gunicorn as our web server
3. Create/Update requirements.txt file
4. Make new Procfile file
5. Make a one-line change in settings.py file

**1. Install django-heroku and setup settings.py file**

On Heroku, sensitive credentials are stored in the environment as config vars. This includes database connection information (named DATABASE_URL), which is traditionally hardcoded in Django applications.

The django-heroku package automatically configures your Django application to work on Heroku. It is compatible with Django 2.0 applications.

It provides many niceties, including the reading of DATABASE_URL, logging configuration, a Heroku CI–compatible TestRunner, and automatically configures ‘staticfiles’ to “just work”.

Use the following command to install django-heroku
```
(hellodjango) $ pip install django-heroku
```

Add the following import statement to the top of settings.py:
```import django_heroku```

Then add the following to the bottom of settings.py:
```
Activate Django-Heroku
django_heroku.settings(locals())
```

**2. Install gunicorn in the virtual environment**
```
(hellodjango) $ pip install gunicorn
```

**3. Run pip freeze to create the requirements.txt file**
```
(hellodjango) $ pip freeze > requirements.txt
```
Make sure your requirements.txt is present in the directory where `manage.py` is present

Heroku looks into  requirements.txt for information on the virtual environment to setup an identical virtual environment in production.

**4. Create Procfile**
```
(hellodjango) $ touch Procfile
```

In Atom, update the following in the Procfile
**web: gunicorn {APP_NAME}.wsgi --log-file -**

The Procfile tells Heroku to use gunicorn, which is a web server suitable for production. The configuration for the server is in the wsgi.py file that Django automatically creates for every new project.

Make sure your procfile is present in the directory where `manage.py` and `requirements.txt` is present

**5. Final step is a one-line change in settings.py**

Scroll down to the section called ALLOWED_HOSTS and add * so it looks like as follows
```
ALLOWED_HOSTS = ['*']
```
The ALLOWED_HOSTS setting tells which host/domain names our Django web app can serve. This is a security measure to prevent HTTP Host header attacks, which are possible even under many seemingly safe web server configurations. We use the wildcard * which means all domains are acceptable to keep things simple. In a production-level Django site you would explicitly list which domains were allowed.

### **Version Control**
Version all the deployment related changes. Choose a **meaningful commit message**. Publish to the remote.

### **Deploy with Heroku**
Heroku is a platform-as-a-service provider. It means  that is allows us to:
1. Create a new app on Heroku push our code to it
2. Add git remote hook for Heroku
3. Configure the app to ignore static files (which will be covered later)
4. Push code to Heroku
5. Start the Heroku server
6. Visit the app on Heroku's provided URL

**1. Create a new Heroku app**
In bash:
```
(hellodjango) $ heroku create

Creating app... done, ⬢ warm-headland-74770
https://warm-headland-74770.herokuapp.com/ | https://git.heroku.com/warm-headland-74770.git
```

**2. Add git remote hook for Heroku**
This means that git will store BOTH our settings for pushing to GitHub and to Heroku. Notice that my Heroku app is called warm-headland-74770. Yours will have a different name.
```
(hellodjango) $ heroku git:remote -a warm-headland-74770
set git remote heroku to https://git.heroku.com/warm-headland-74770.git
```

**3. Configure app on Heroku to ignore static files**
We tell Heroku to ignore static files like CSS and JavaScript.
```
(hellodjango) $ heroku config:set DISABLE_COLLECTSTATIC=1
Setting DISABLE_COLLECTSTATIC and restarting ⬢ warm-headland-74770... done, v3
DISABLE_COLLECTSTATIC: 1
```

**4. Push code to Heroku**

Make sure you update the `requirements.txt` file always before push if any new dependencies are installed

If your repository don't have any branches present use command `git push heroku master`

NOTE: If heroku project is a subdirectory of the git repository, i.e., .git is in the parent directory of the django website app use

**git push heroku** which pushes the code to the branch and then use command

**git subtree push --prefix {APP_NAME} heroku master** to push into the master

```
(hellodjango) git subtree push --prefix {APP_NAME} heroku master
```
Otherwise, use **git push heroku master**

```
(hellodjango) $ git push heroku master
Counting objects: 29, done.
Delta compression using up to 8 threads.
Compressing objects: 100% (25/25), done.
Writing objects: 100% (29/29), 10.57 KiB | 1.76 MiB/s, done.
Total 29 (delta 2), reused 0 (delta 0)
remote: Compressing source files... done.
remote: Building source:
remote:
remote: -----> Python app detected
remote: -----> Installing python-3.6.12
remote: -----> Installing pip 20.1.1, setuptools 47.1.1 and wheel 0.34.2
remote: -----> Installing SQLite3
remote: -----> Installing requirements with pip
remote:        Collecting asgiref==3.2.10
remote:          Downloading asgiref-3.2.10-py3-none-any.whl (19 kB)
remote:        Collecting certifi==2020.6.20
remote:          Downloading certifi-2020.6.20-py2.py3-none-any.whl (156 kB)
remote:        Collecting dj-database-url==0.5.0
remote:          Downloading dj_database_url-0.5.0-py2.py3-none-any.whl (5.5 kB)
remote:        Collecting Django==3.1.1
remote:          Downloading Django-3.1.1-py3-none-any.whl (7.8 MB)
remote:        Collecting django-heroku==0.3.1
remote:          Downloading django_heroku-0.3.1-py2.py3-none-any.whl (6.2 kB)
remote:        Collecting gunicorn==20.0.4
remote:          Downloading gunicorn-20.0.4-py2.py3-none-any.whl (77 kB)
remote:        Collecting psycopg2==2.8.6
remote:          Downloading psycopg2-2.8.6.tar.gz (383 kB)
remote:        Collecting pytz==2020.1
remote:          Downloading pytz-2020.1-py2.py3-none-any.whl (510 kB)
remote:        Collecting sqlparse==0.3.1
remote:          Downloading sqlparse-0.3.1-py2.py3-none-any.whl (40 kB)
remote:        Collecting whitenoise==5.2.0
remote:          Downloading whitenoise-5.2.0-py2.py3-none-any.whl (19 kB)
remote:        Collecting wincertstore==0.2
remote:          Downloading wincertstore-0.2-py2.py3-none-any.whl (8.8 kB)
remote:        Building wheels for collected packages: psycopg2
remote:          Building wheel for psycopg2 (setup.py): started
remote:          Building wheel for psycopg2 (setup.py): finished with status 'done'
remote:          Created wheel for psycopg2: filename=psycopg2-2.8.6-cp36-cp36m-linux_x86_64.whl size=447525 sha256=1f8359867824ba79d16e190c01c21381c61fc689c512ab5810e6c7151a1a5a98
remote:          Stored in directory: /tmp/pip-ephem-wheel-cache-t4fzenvr/wheels/cb/74/1b/4b65077db4eb0d85763050e60c5921398d2858945558352dd8
remote:        Successfully built psycopg2
remote:        Installing collected packages: asgiref, certifi, dj-database-url, pytz, sqlparse, Django, psycopg2, whitenoise, django-heroku, gunicorn, wincertstore
remote:        Successfully installed Django-3.1.1 asgiref-3.2.10 certifi-2020.6.20 dj-database-url-0.5.0 django-heroku-0.3.1 gunicorn-20.0.4 psycopg2-2.8.6 pytz-2020.1 sqlparse-0.3.1 whitenoise-5.2.0 wincertstore-0.2
remote: -----> Discovering process types
remote:        Procfile declares types -> web
remote:
remote: -----> Compressing...
remote:        Done: 51.6M
remote: -----> Launching...
remote:        Released v6
remote:        https://warm-headland-74770.herokuapp.com/ deployed to Heroku
remote:
remote: Verifying deploy... done.
```

**5. Start Heroku server**
```
(hellodjango) $ heroku ps:scale web=1
Scaling dynos... done, now running web at 1:Free
```

**6. Confirm app is live and online**
```
(hellodjango) $ heroku open
```
The URL for the app is shown in a browser and heroku server installation serves the homepage.
My URL is [https://git.heroku.com/warm-headland-74770.git](https://git.heroku.com/warm-headland-74770.git)
No need to exit heroku. It will continue running at this URL from now on.