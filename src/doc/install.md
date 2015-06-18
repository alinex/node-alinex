Installation
=========================================


Installation of node.js and npm
-----------------------------------------

You may install node from your repository or with the following manual steps.

### Linux system based on debian 7

Best choice is to use the package manager:

		curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -
		sudo apt-get install -y nodejs build-essential

or

		curl -sL https://deb.nodesource.com/setup | sudo bash -
		sudo apt-get install -y nodejs build-essential

Or you may install it from source and compile:

		# Install dependencies from repository
		sudo apt-get update
		sudo apt-get install -y g++ curl libssl-dev git-core
		# Download node.js source
		cd /usr/src
		sudo mkdir node
		sudo chmod 777 node
		git clone https://github.com/joyent/node.git
		# Compile and install node.js
		cd node
		git checkout v0.11.13-release
		./configure
		make
		sudo make install

And to update use the following:

		cd /usr/src/node
		# Compile and install node.js
		git pull
		git checkout v0.11.13-release
		./configure
		make
		sudo make install


Developmnet helpers
-----------------------------------------

For development please install some global modules like below:

		sudo apt-get install -y python-virtualenv
		sudo easy_install Pygments

And to make work with git easy:

		git config --global user.name Alinex
		git config --global user.email info@alinex.de

The same goes for npm:

		npm adduser # you will be  required to give your user information


Alinex Applications
-----------------------------------------

To install the alinex applications you can now simply call npm:

		sudo npm install -g alinex-... --production

See [npm](npm.md) for more help to use the package manager.

### Daemon

You may use the forever productive system to run as daemon.

		sudo npm install -g forever
