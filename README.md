## Instalación de Docker en Ubuntu (oficial)

> Probado en Ubuntu (usa el repo oficial de Docker)

### 1) Preparar repositorio
```bash
sudo apt update && sudo apt upgrade -y
sudo apt install -y ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo tee /etc/apt/keyrings/docker.asc > /dev/null

sudo chmod a+r /etc/apt/keyrings/docker.asc

echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" \
  | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update
```

### 2) Instalar Docker Engine + Compose
```bash
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

### 3) Iniciar y habilitar servicio
```bash
sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl status docker
```

### 4) Usar Docker sin sudo (opcional)
```bash
sudo usermod -aG docker $USER
newgrp docker
```
