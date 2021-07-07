# salt-master

## Para instalar o salt master e minions
- wget -O - https://repo.saltstack.com/apt/ubuntu/16.04/amd64/latest/SALTSTACK-GPG-KEY.pub | sudo apt-key add -
- echo "deb http://repo.saltstack.com/apt/ubuntu/16.04/amd64/latest xenial main" >> /etc/apt/sources.list
- apt-get install salt-master salt-minion -y
- - salt-key -a salt.anselmopfeifer.com -y

## Ou ainda podemos usar conforme o exemplo abaixo.
- add-apt-repository -y ppa:saltstack/salt
- apt-get update
- apt-get install salt-minion
- salt-key -a salt.anselmopfeifer.com -y

## Executar comandos pelo SALT em todos os hosts *
- salt '*' cmd.run 'ifconfig'
- salt '*' pkg.install cowsay
- salt '*' pkg.remove cowsay

## Ajustar as keys
- salt-key -L
- salt-key -A
- salt-key --accept=<KEY> / salt-key --accept-all

## Test
- salt '*' test.ping
- salt '*' sys.doc
- salt '*' sys.doc package

## LINKs
- https://www.devopslibrary.com/
- https://youtu.be/W0i5FpCq2WI?list=PL6TwUbrFsOuMc_V_3tpvn6DeQiyTSqScU

