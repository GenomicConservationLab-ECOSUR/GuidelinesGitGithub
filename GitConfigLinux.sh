Instrucciones para configurar Git en la terminal.

Nótese que para este ejemplo estoy utilizando la terminal 'konsole'
de Arch Linux. Debería funcionar para otras distribuciones de Linux.

Asegúrate de tener instalado Git en tu sistema.

git -v

git version 2.47.1

Si no se encuentra ya instalado utilizar:

sudo pacman -S git (Arch linux)

sudo apt-get install git (Ubuntu/Debian)

Antes de instalar cualquier cosa en Linux, ¡siempre actualiza tu sistema!

sudo pacman -Syu (Arch Linux)

sudo apt-get update (Ubuntu/Debian)

Ya que Git este instalado en tú sistema, inicia la configuración.

git config --global user.name "Tu nombre" (El mismo que tienes en GitHub)
git config --global user.email "correo@example.com"

Ahora, genera tu clave SSH (Secure Shell).

La clave se guarda en una una dirección del directorio /home.

ssh-keygen -t ed25519 -C "correo@example.com"

Aquí puedes poner una contraseña, es opcional.

Agregamos dicha clave SSH al agente SSH.

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

Copiamos la clave de este archivo.

cat ~/.ssh/id_ed25519.pub

Se debe ver asi:

ssh-ed25519 AAAAC...

Copiar solo clave, sin el correo hasta el final.

Ahora dirigete a Github y navega a Settings > SSH and GPG keys.

Haz click en 'New SSH Key'. Pega tu clave y dale cualquier titulo.

Haz una prueba de la conección SSH.

ssh -T git@github.com

Deberias ver este mensaje:

Hi <nombre>! You've successfully authenticated, but GitHub does not provide shell access.

Prueba clonando algún repositorio.

git clone git@github.com:GenomicConservationLab-ECOSUR/Guidelines_Git-Github.git
