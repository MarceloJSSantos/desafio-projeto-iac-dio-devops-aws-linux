#!/bin/bash

echo "Criando usuários do sistema..."

useradd guest3 -c "Convidado" -s /bin/bash -m -p $(openssl passwd 123)
passwd guest3 -e
#userdel guest3
useradd guest4 -c "Convidado" -s /bin/bash -m -p $(openssl passwd 123)
passwd guest4 -e
#userdel guest4
useradd guest5 -c "Convidado" -s /bin/bash -m -p $(openssl passwd 123)
passwd guest5 -e
#userdel guest5
useradd guest6 -c "Convidado" -s /bin/bash -m -p $(openssl passwd 123)
passwd guest6 -e
#userdel guest6
echo "Finalizado!!!"


