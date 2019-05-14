## Purpose

Having [NethServer](https://www.nethserver.org) machines ready-to-use with some pre-configured software already installed.

This repo contains some simple [Vagrantfile.](https://www.vagrantup.com/docs/vagrantfile/) Each of them create a NethServer VirtualBox machine with a private network using `192.168.11.22` ip address.

## List of available NethServer machine

- NethServer: base installation of NethServer Linux distribution community edition
- Nextcloud: [Nextcloud](https://nextcloud.org) installation ready to use with some pre-configured users
- NethServer FreePBX: VoIP PBX based on [Asterisk](https://www.asterisk.org/) and [FreePBX](https://www.freepbx.org/)

## How to use

1. Clone the repository:

```
git clone https://github.com/alepolidori/vagrant-files.git
```

2. Step into the directory of the project you are interested in:

```
cd <DIRECTORY>
```

3. Run the machine:

```
vagrant up
```

## Example: having [Nextcloud](https://nextcloud.org) installation ready to use

Execute:

```
git clone https://github.com/alepolidori/vagrant-files.git
cd vagrant-files/nextcloud/nextcloud-16.0.0
vagrant up
```

After that you can login at https://192.168.11.22/nextcloud

You can use one of already existing user:

- `admin`
- `user1`
- `user2`

All users have the same default password: `Nethesis,1234.`

You can create new users from [Nextcloud admin settings](https://docs.nextcloud.com/server/16/admin_manual/configuration_user/user_configuration.html) or from [NethServer Account Provider.](http://docs.nethserver.org/en/v7/accounts.html)

Find out more on:

- [Nextcloud](https://docs.nextcloud.com/)
- [NethServer](http://docs.nethserver.org/en/v7/)
- [NethServer Nextcloud](http://docs.nethserver.org/en/v7/nextcloud.html)
