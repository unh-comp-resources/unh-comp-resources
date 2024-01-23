---
title: GitHub Authentication
---

## Have Git installed on local machine

## Set your Git user name for all repositories on your local machine

> git config --global user.name &quot;mihaelasabin&quot;

Confirm that your Git user name has been set for all repositories on your local machine

> git config --global user.name

## GitHub authentication

If Git prompts you for a username and password every time you try to interact with GitHub (using push, fetch, or pull commands), it means that you have used HTTPS clone URL for the repository.

When Git prompts you for your password, enter your **personal access token (PAT)** instead. Password-based authentication for Git is deprecated, and using a PAT is more secure. For more information, see &quot;[Creating a personal access token](https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token).&quot;

You can avoid being prompted for your password caching your GitHub credentials in Git (see next guidelines below). Once you&#39;ve configured credential caching, Git automatically uses your cached personal access token when you pull or push a repository using HTTPS.

## Caching your GitHub credentials in Git

If you are cloning GitHub repositories using HTTPS, you can use a credential helper to tell Git to remember your GiHub credentials.

See [https://docs.github.com/en/get-started/getting-started-with-git/caching-your-github-credentials-in-git](https://docs.github.com/en/get-started/getting-started-with-git/caching-your-github-credentials-in-git) and choose the operating system of your machine: Mac, Windows, or Linux.

We consider below the example of **Linux** or **Linux Subsystem in Window 10**.

- Set git to use the memory cache with help from credential.helper. Otherwise, by default, Git caches the password for 15 minutes.
 $ git config --global credential.helper cache

- To change the default password cache timeout to 1 hour:
 $ git config --global credential.helper &#39;cache --timeout=3600&#39;

## Caching timeout to _neve_

To change the default password cache timeout to never, the setting is operating system dependent.

- On Mac OSX:
  - `git config --global credential.helper osxkeychain`
- On Windows:
  - First you must install git credential manager for Windows
    - [[microsoft/Git-Credential-Manager-for-Windows: Secure Git credential storage for Windows with support for Visual Studio Team Services, GitHub, and Bitbucket multi-factor authentication.](https://github.com/Microsoft/Git-Credential-Manager-for-Windows)]
  - For git 2.7.3+ now run:
    - `git config --global credential.helper manager`
- On any Linux `gnome-keyring` is needed:
  - Fedora:
    - `sudo dnf install git-credential-libsecret `
    - `git config --global credential.helper /usr/libexec/git-core/git-credential-libsecret`
  - Ubuntu:
    - sudo apt-get install libsecret-1-0 libsecret-1-dev
    - cd /usr/share/doc/git/contrib/credential/libsecret
    - sudo make git config --global credential.helper /usr/share/doc/git/contrib/credential/libsecret/git-credential-libsecret

## Creating a personal access token (PAT)

You should create a personal access token to use in place of a password with the command line or with the GitHub API.

See [https://docs.github.com/en/github/authenticating-to-github/keeping-your-account-and-data-secure/creating-a-personal-access-token](https://docs.github.com/en/github/authenticating-to-github/keeping-your-account-and-data-secure/creating-a-personal-access-token) to learn how to create a PAT.

Once you have a token, you can enter the token instead of your password when performing Git operations over HTTPS. For example:

$ git clone https://github.com/username/repo.git

Username: your\_username

Password: your\_token

If you are not prompted for your username and password, your credentials may be cached on your computer. You need to **update your credentials in the Keychain** to replace your old password with the token.

Instead of manually entering your PAT for every HTTPS Git operation (push, fetch, pull, or clone), you can cache your PAT in Git. Git will temporarily store your credentials in memory until an expiry interval has passed. You can also store the token in a plain text file that Git can read before every request. For more information, see **Caching your GitHub credentials in Git.**

**Enabling 2FA on github.**

Enabling 2FA allows you to secure your github account via phone. In the coming months, password only authentication will be phased out, and every github user will be forced to use 2FA. Because of this it&#39;s better to get it set up, and to get used to the workflow changes it brings now.

By following the guide linked below, you can walk yourself through getting 2FA set up on github.

[draft-resources/github2FA.md at main · unh-aes-resources/draft-resources](https://github.com/unh-aes-resources/draft-resources/blob/main/Git-2FA/github2FA.md)

## References

GitHub Documentation. Setting Your User Name.

[https://docs.github.com/en/get-started/getting-started-with-git/setting-your-username-in-git](https://docs.github.com/en/get-started/getting-started-with-git/setting-your-username-in-git)

Stack Overflow: Is there a way to cache https credentials

[git - Is there a way to cache https credentials for pushing commits? - Stack Overflow](https://stackoverflow.com/questions/5343068/is-there-a-way-to-cache-https-credentials-for-pushing-commits)

GitHub Documentation. Caching Credentials. https://docs.github.com/en/get-started/getting-started-with-git/caching-your-github-credentials-in-git

GitHub Documentation. Creating a Personal Access Token.

https://docs.github.com/en/github/authenticating-to-github/keeping-your-account-and-data-secure/creating-a-personal-access-token