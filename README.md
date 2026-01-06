<img width="776" height="408" alt="Image" src="https://github.com/user-attachments/assets/8c18ac15-9a13-435a-8b68-132c4837a444" />

## 🐳 Instalación de Docker en Ubuntu Server
📌 Aca les comparto los comandos de instalación de Docker en una servidor con el sistema operativo Ubuntu Server. Con esto podemos complementar el despliegue de nuestros proyectos en una instancia de EC2 en AWS.

> ✅ Probado en 🐧 Ubuntu Server

### 1) 🧰 Preparar repositorio
```bash
sudo apt update && sudo apt upgrade -y
sudo apt install -y ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo tee /etc/apt/keyrings/docker.asc > /dev/null

sudo chmod a+r /etc/apt/keyrings/docker.asc

echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update
```

### 2) 📦 Instalar Docker Engine + Compose
```bash
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

### 3) ⚙️ Iniciar y habilitar servicio
```bash
sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl status docker
```

### 4) 🔐 Usar Docker sin sudo (opcional)
```bash
sudo usermod -aG docker $USER
newgrp docker
```
### 5) 🚀 Creamos un contenedor
🧱 Una vez instalado Docker en el servidor, ya podemos desplegar nuestros proyectos a través de contenedores.
```bash
docker run -p 8080:8080 --name contenedor-nombre -d nombre-imagen
```

### 6)📝  Ver logs (opcional)
En caso se quiera ver los logs del contenedor de nuestro proyecto en ejecución, podemos visualizar los logs con el siguiente comando:
```bash
docker logs contenedor-id
```

## 👨‍💻 Author

<div align="center">

**Luis Orihuela** - *FullStack Developer*



🌐 **Portfolio:** [luisorihuela.me](https://luisorihuela.me)  
💼 **GitHub:** [@LuisOrihuela08](https://github.com/LuisOrihuela08)  

---

<sub>Made with ❤️ in Peru 🇵🇪 | © 2025</sub>

</div>
