# modulo-01

## BOOTSTRAP
- curl -L https://bootstrap.saltstack.com -o bootstrap_salt.sh
- sudo sh bootstrap_salt.sh

## Criar a estrutura inicial
- mkdir -p /srv/salt/
- nano /srv/salt/top.sls
- nano /srv/salt/twebserver.sls

## Executar
- salt-call --local state.apply
- salt-call --local state.apply -l debug
