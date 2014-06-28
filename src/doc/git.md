Git Code Repository
=================================================

Setup
-------------------------------------------------

### Configure default user

	git config --global user.name alinex
	git config --global user.email info@alinex.de

### Password caching

The next option will tell Git that you don't want to type your username and 
password every time your computer talks to GitHub.

To use this option, you need to turn on the credential helper so that Git will 
save your password in memory for some time:

	git config --global credential.helper cache

This will keep the password for 15 minutes in memory.
But you can also have Git store your credentials permanently using the following:

	git config --global credential.helper store

Note: While this is convenient, Git will store your credentials in clear text 
in a local file (.git-credentials) under your "home" directory


Using the Origin
-------------------------------------------------

Development
-------------------------------------------------

Tagging
-------------------------------------------------

Branching
-------------------------------------------------

GitHub
-------------------------------------------------

