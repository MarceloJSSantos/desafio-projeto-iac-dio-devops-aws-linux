#!/bin/bash

#exclui usuários
# echo "Exclusão de usuários"
# userdel joao.silva -r -f
# userdel marcelo.santos -r -f
# userdel guest -r -f
# userdel convidado -r -f
# userdel convidado2 -r -f
# userdel guest3 -r -f
# userdel guest4 -r -f
# userdel guest5 -r -f
# userdel guest6 -r -f
# userdel deborah.silva -r -f

#exclui diretórios
# echo "Exclusão de grupo"

# groupdel -f GRP_ADM
# groupdel -f GRP_VEN

# echo "Finalizada!"

#cria os diretórios do desafio
echo "Cria os diretórios na raiz"

cd /

mkdir publico
mkdir adm
mkdir ven
mkdir sec

#cria os grupos do desafio
echo "Cria os grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

#cria os usuários associados a seus respectivos grupos do desafio
echo "Cria os usuários associados a seus respectivos grupos"

useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd 123) -G GRP_ADM
passwd carlos -e
useradd maria -c "aria" -s /bin/bash -m -p $(openssl passwd 123) -G GRP_ADM
passwd maria -e
useradd joao -c "João" -s /bin/bash -m -p $(openssl passwd 123) -G GRP_ADM
passwd joao -e

useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd 123) -G GRP_VEN
passwd debora -e
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd 123) -G GRP_VEN
passwd sebastiana -e
useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd 123) -G GRP_VEN
passwd roberto -e

useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd 123) -G GRP_SEC
passwd josefina -e
useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd 123) -G GRP_SEC
passwd amanda -e
useradd rogerio -c "Rogério" -s /bin/bash -m -p $(openssl passwd 123) -G GRP_SEC
passwd rogerio -e

#define root como dono de todos os diretórios criados
echo "Define 'root' como o dono de todos os diretórios criados"

chown root:root publico
chown root:GRP_ADM adm
chown root:GRP_VEN ven
chown root:GRP_SEC sec

#dá permissões aos usuários aos devidos diretórios do desafio
echo "Dá permissões aos usuários aos devidos diretórios do desafio"

chmod 777 publico
chmod 770 adm
chmod 770 ven
chmod 770 sec

echo "Script Finalizado!"
