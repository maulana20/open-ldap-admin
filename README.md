# open-ldap-admin
simple test ldap dengan docker container.

### install
1. `$ docker-compose build`
2. `$ docker-compose up -d`

### ldap user
1. `$ docker-compose exec openldap ./data/user.sh create`
2. `$ docker-compose exec openldap ./data/user.sh list`

### note
[ldap GUI](https://sourceforge.net/projects/ldapadmin/)
