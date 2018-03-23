#!/bin/bash

mkdir -p /opt/ldap/var/lib/ldap
mkdir -p /opt/ldap/etc/ldap/slapd.d

export ORG=IBM
export DOMAIN=ibm.com
export ADMIN_PWD=Passw0rd!
export LDAP_NAME=ldap-service
export LDAPADMIN_NAME=ldapadmin-service
export LDAP_PORT=6389
export LDAPADMIN_PORT=6443
LINK_HOST=ldap-host

docker pull osixia/openldap:1.1.11
docker pull osixia/phpldapadmin:0.7.1

docker run -v /opt/ldap/var/lib/ldap:/var/lib/ldap -v /opt/ldap/etc/ldap/slapd.d:/etc/ldap/slapd.d -p $LDAP_PORT:389 --name "$LDAP_NAME" --hostname "$LDAP_NAME" --env LDAP_ORGANIZATION="$ORG" --env LDAP_DOMAIN="$DOMAIN" --env LDAP_ADMIN_PASSWORD="$ADMIN_PWD" --hostname "$LDAP_NAME" --detach osixia/openldap:1.1.11

docker run --name "$LDAPADMIN_NAME" --hostname "$LDAPADMIN_NAME" -p $LDAPADMIN_PORT:443 --link "$LDAP_NAME:$LINK_HOST" --env PHPLDAPADMIN_LDAP_HOSTS="$LINK_HOST" --detach osixia/phpldapadmin:0.7.1

echo "username=cn=admin,dc=ibm,dc=com"
echo "password=Passw0rd!"
