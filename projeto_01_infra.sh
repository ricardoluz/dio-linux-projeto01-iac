#!/bin/bash

clear

echo -e "\n1. Criação dos dirétórios."
#--------------------------------

mkdir -m777 /publico
mkdir -m770 /adm
mkdir -m770 /ven
mkdir -m770 /sec


echo -e "\n2. Criação dos grupos."
#-------------------

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo -e "\n3. Alterar proprietários dos diretórios."
#-------------------------------------
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec


echo -e "\n4. Criação de usuários."
#--------------------

# ADM
useradd carlos -m -G GRP_ADM -c "Carlos" -s /bin/bash -p $(openssl passwd qasw3457)
passwd carlos -eq

useradd maria -m -G GRP_ADM -c "Maria" -s /bin/bash -p $(openssl passwd qasw3457)
passwd maria -eq

useradd joao -m -G GRP_ADM -c "Joao" -s /bin/bash -p $(openssl passwd qasw3457)
passwd joao -eq


# VEN
useradd debora -m -G GRP_VEN -c "Debora" -s /bin/bash -p $(openssl passwd qasw3457)
passwd debora -eq

useradd sebastiana -m -G GRP_VEN -c "Sebastiana" -s /bin/bash -p $(openssl passwd qasw3457)
passwd sebastiana -eq

useradd roberto -m -G GRP_VEN -c "Roberto" -s /bin/bash -p $(openssl passwd qasw3457)
passwd roberto -eq


# SEC
useradd josefina -m -G GRP_SEC -c "Josefina" -s /bin/bash -p $(openssl passwd qasw3457)
passwd josefina -eq

useradd amanda -m -G GRP_SEC -c "Amanda" -s /bin/bash -p $(openssl passwd qasw3457)
passwd amanda -eq

useradd rogerio -m -G GRP_SEC -c "Rogerio" -s /bin/bash -p $(openssl passwd qasw3457)
passwd rogerio -eq


echo -e "\n\nProcesso finalizado.\n\n"

