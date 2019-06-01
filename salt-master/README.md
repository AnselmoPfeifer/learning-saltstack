# Creating new salt master

```
vagrant up
vagrant provision
or 
vagrant up --provision
```

## Sample of Salt Commands
```
salt-call --local grains.items
salt -G os_family: Debian test.ping
```

