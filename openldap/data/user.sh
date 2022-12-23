#!/bin/sh

if [ $1 = "create" ]; then
  ldapadd -x -D "cn=admin,dc=example,dc=org" -w $LDAP_ADMIN_PASSWORD -f /app/data/user.ldif > /app/data/log.txt
elif [ $1 = "list" ]; then
  ldapsearch -x -H ldap://localhost -b dc=example,dc=org -D "cn=admin,dc=example,dc=org" -w $LDAP_ADMIN_PASSWORD
else
  echo did not see argument $1;
fi
