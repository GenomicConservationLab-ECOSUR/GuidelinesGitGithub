# Seguir las instrucciones:

# 1. Crear una nueva rama
$ git branch newRLadies
# 2. Entrar a la rama que necesitas
$ git checkup newRLadies
# 3. Añadir cambios
$ add file
# 4. Hacer commit
$ git commit --messagge"add Rscript"
# 5. Hacer un git push 
$ git push --set-upstream origin newRLadies
# 6. Revisar los cambios en github

# 7. Cambiarte a la rama "issue-1" (que necesitas):
$ git checkout issue-1
# 8. Fusionar  issue-1 con la rama que deseas
$ git merge newRLadies


# Step 1: Clone the repository or update your local repository with the latest changes.
git pull origin main

# Step 2: Switch to the base branch of the pull request.
git checkout main

# Step 3: Merge the head branch into the base branch.
git merge newRLadies

# Step 4: Push the changes.
git push -u origin main
