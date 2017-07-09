# learning-saltstack

## BOOTSTRAP SALT MINION
- curl -L https://bootstrap.saltstack.com -o bootstrap_salt.sh
- sudo sh bootstrap_salt.sh

## Criar a estrutura inicial
- mkdir -p /srv/salt/
- nano /srv/salt/top.sls
- nano /srv/salt/twebserver.sls

## Executar
- salt-call --local state.apply
- salt-call --local state.apply -l debug


## LINKS
- https://docs.saltstack.com/en/latest/
- https://docs.saltstack.com/en/getstarted/fundamentals/
- https://github.com/dmangot/Mastering-DevOPs