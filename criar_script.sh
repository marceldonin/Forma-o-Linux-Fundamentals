#!/bin/bash

echo "------------------------------------------------"
echo "CRIANDO DIRETÓRIOS:"
echo "------------------------------------------------"
echo " "

mkdir /publico
echo "Diretório PUBLICO criado com SUCESSO!"
echo " "

mkdir /adm
echo "Diretório ADM criado com SUCESSO!"
echo " "

mkdir /ven
echo "Diretório VEN criado com SUCESSO!"
echo " "

mkdir /sec
echo "Diretório SEC criado com SUCESSO!"
echo " "

echo "------------------------------------------------"
echo  "CRIANDO GRUPOS:"
echo "------------------------------------------------"
echo " "

groupadd GRP_ADM
echo "GRP_ADM criado com SUCESSO!"
echo " "

groupadd GRP_VEN
echo "GRP_VEN criado com SUCESSO!"
echo " "

groupadd GRP_SEC
echo "GRP_SEC criado com SUCESSO!"
echo " "

echo "------------------------------------------------"
echo  "CRIANDO USUÁRIOS:"
echo "------------------------------------------------"
echo " "

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt  Senha1234)  -G GRP_ADM
echo "Usuário CARLOS criado no GRP_ADM  com SUCESSO!"
echo " "

useradd maria -m -s /bin/bash -p $(openssl passwd -crypt   Senha1234)  -G GRP_ADM
echo "Usuário MARIA criado no GRP_ADM  com SUCESSO!"
echo " "

useradd joao_ -m -s /bin/bash -p $(openssl passwd -crypt   Senha1234)  -G GRP_ADM
echo "Usuário JOAO_ criado no GRP_ADM  com SUCESSO!"
echo " "

echo "------------------------------------------------"
echo " "

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha1234)  -G GRP_VEN
echo "Usuário DEBORA criado no GRP_VEN  com SUCESSO!"
echo " "

useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt  Senha1234)  -G GRP_VEN
echo "Usuário SEBASTIANA criado no GRP_VEN  com SUCESSO!"
echo " "

useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt   Senha1234)  -G GRP_VEN
echo "Usuário ROBERTO criado no GRP_VEN  com SUCESSO!"
echo " "

echo "------------------------------------------------"
echo " "

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt   Senha1234)  -G GRP_SEC
echo "Usuário JOSEFINA criado no GRP_SEC  com SUCESSO!"
echo " "


useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt   Senha1234)  -G GRP_SEC
echo "Usuário AMANDA criado no GRP_SEC  com SUCESSO!"
echo " "


useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt   Senha1234)  -G GRP_SEC
echo "Usuário ROGERIO criado no GRP_SEC  com SUCESSO!"
echo " "

echo "------------------------------------------------"
echo  "PERMISSÕES DOS DIRETÓRIOS"
echo "------------------------------------------------"
echo " "

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "--------------------------------------------------------------"
echo  "SCRIPT EXECUTADO E FINALIZADO COM SUCESSO"
echo "--------------------------------------------------------------"
echo " "

