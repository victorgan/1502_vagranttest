# Vagrant On a Windows Machine

Following: https://docs.vagrantup.com/v2/getting-started/project_setup.html

## Step 1: Install Git

For two reasons:
1) So you have git on your host machine
2) To add Linux-style command line tools. There'll be three options during
installation: choose the option that adds Linux-style command line tools to your
system Path. This isn't really necessary, because you can run your virtual
machine from virtualbox.

This will allow you t

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

vagrant halt (or vagrant destroy to completely wipe from computer)

Suspending the virtual machine by calling vagrant suspend will save the current
running state of the machine and stop it. When you're ready to begin working
again, just run vagrant up, and it will be resumed from where you left off. The
main benefit of this method is that it is super fast, usually taking only 5 to
10 seconds to stop and start your work. The downside is that the virtual machine
still eats up your disk space, and requires even more disk space to store all
the state of the virtual machine RAM on disk.

Halting the virtual machine by calling vagrant halt will gracefully shut down
the guest operating system and power down the guest machine. You can use vagrant
up when you're ready to boot it again. The benefit of this method is that it
will cleanly shut down your machine, preserving the contents of disk, and
allowing it to be cleanly started again. The downside is that it'll take some
extra time to start from a cold boot, and the guest machine still consumes disk
space.

Destroying the virtual machine by calling vagrant destroy will remove all traces
of the guest machine from your system. It'll stop the guest machine, power it
down, and remove all of the guest hard disks. Again, when you're ready to work
again, just issue a vagrant up. The benefit of this is that no cruft is left on
your machine. The disk space and RAM consumed by the guest machine is reclaimed
and your host machine is left clean. The downside is that vagrant up to get
working again will take some extra time since it has to reimport the machine and
reprovision it.


## Step 6: Start Provisioning with shell scripts


