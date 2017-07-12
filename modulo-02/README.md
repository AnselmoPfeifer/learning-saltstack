# modulo 02

- Para instalar o salt master e minions
- wget -O - https://repo.saltstack.com/apt/ubuntu/16.04/amd64/latest/SALTSTACK-GPG-KEY.pub | sudo apt-key add -
- echo "deb http://repo.saltstack.com/apt/ubuntu/16.04/amd64/latest xenial main" >> /etc/apt/sources.list
- apt-get install salt-master salt-minion -y
- salt-key -a salt.anselmopfeifer.com -y
- salt '*' cmd.run 'ifconfig'

## LINKs
- https://www.devopslibrary.com/
- https://youtu.be/W0i5FpCq2WI?list=PL6TwUbrFsOuMc_V_3tpvn6DeQiyTSqScU


