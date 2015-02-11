# Vagrant Test

Following: https://docs.vagrantup.com/v2/getting-started/project_setup.html

## Step 1: Install Git (Optional)

For two reasons:
1) So you have git on your host machine
2) To add Linux-style command line tools. There'll be three options during
installation: choose the option that adds Linux-style command line tools to your
system Path. This isn't really necessary, because you can run your virtual
machine from virtualbox.

## Step 2: Install Vagrant and Virtualbox

Both have installers.

http://www.vagrantup.com/
https://www.virtualbox.org/wiki/Downloads

## Step 3: Create a Vagrantfile.

Navigate using the command line (from step 1, otherwise just Microsoft's cmd) to
your desired folder. Optional: version control this repository. Type:

vagrant init

This will make the initial vagrant file

## Step 4: Download a box

Type:

vagrant box add ubuntu/trusty64

## Step 5: Change your base box to ubuntu/trusty64
In your Vagrantfile,

config.vm.box = "base"

to

config.vm.box = "ubuntu/trusty64"

## Step 5: Start the virtualbox

vagrant up

or, go to the virtualbox UI and start it there.
username: vagrant
password: vagrant

to stop,

vagrant destroy
