# Docker
---------------------------------------------------
## Установка docker на Ubuntu
### 1) Добавляем репозиторий докера (чтобы получить последнюю его версию)
```bash
sudo apt-get update
```

```bash
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release -y
```

```bash
    sudo mkdir -p /etc/apt/keyrings
```

```bash
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
```

```bash
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```

### 2) Устанавливаем docker

```bash
sudo apt-get update
```

```bash
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
```

### 3) Устанавливаем docker-compose

```bash
sudo curl -L "https://github.com/docker/compose/releases/download/v2.6.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
```

```bash
sudo chmod +x /usr/local/bin/docker-compose
```

### 4) Проверяем, что всё установилось
```bash
sudo docker -v
sudo docker ps
sudo docker images
docker-compose -v
```

### 5) Запуск докера не из-под суперпользователя
```bash
sudo groupadd docker
```

```bash
sudo usermod -aG docker $USER
```
`*` Может выдать groupadd: group 'docker' already exists. Это нормально.

```bash
sudo usermod -aG docker $USER
```
Затем выходим из терминала и заходим обратно.

```bash
id -nG
docker ps
docker images
```
