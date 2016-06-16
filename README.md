# jenkins2-vagrant

Vagrant-box for testing Jenkins 2.0

Install

    brew cask install vagrant

Startup with

    vagrant up

Stop the vagrant machine

    vagrant halt

Use ssh into the vagrant machine

    vagrant ssh

Stop and delete the vagrant machine

    vagrant destory

Vagrant prints admin-password after environment is set up and Jenkins2 is accessible at [localhost:9088](http://localhost:9088/)

## how to build

```
vagrant up
make miniVM
```

移除 vm 之 box-disk1，掛載 box-disk2

```
make cleanVM
make exportVM
```
