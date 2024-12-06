#################################################################################################
A continuación se muestra un ejemplo de como clonar y sincronizar repositorios.
Advertencia: Nunca trabajes directamente en la rama principal (origin main)!
#################################################################################################
# 1: Clona el repositorio
$ git clone https://github.com/GenomicConservationLab-ECOSUR/Repositorio
# 2: Actualiza el repositorio local (en tu computadora) para obtener los últimos cambios.
$ git pull origin main
# 3: Crear una nueva rama
$ git branch Branch_01
# 4: Entrar a la rama que acabas de crear
$ git checkup Branch_01
# 3: Crea y edita tus archivos, scripts, etc desde tu computadora. Para agregar los nuesvos cambios de un archivo:
$ add script.sh
# 4. Hacer commit
$ git commit --messagge"add script de bash"
# 5. Hacer un git push 
$ git push --set-upstream origin Branch_01
# 6. Revisar los cambios en github
#################################################################################################
Si deseas crear nuevas versiones de tu código o scripts
# 1: Crea una segunda rama y cambiate a ella.
$ git checkout -b Branch_02
# 2. Empuja la nueva rama al repositorio de github
 git push --set-upstream Branch_02
# 3. Genera tu código de prueba y depositalo en la nueva rama:
$ git add NewScript.sh
# 4. Hacer commit
$ git commit --messagge"new version script control"
# 5. Hacer un git push 
$ git push --set-upstream Branch_02
# Si ddeseas fusiona las dos ramas, primero regresa a la rama base Branch_01
$ git checkup Branch_01
# 8. Fusionar Branch_01 Branch_02
$ git merge Branch_02

