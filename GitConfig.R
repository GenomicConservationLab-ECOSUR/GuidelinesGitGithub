library(usethis)
use_git_config(user.name = "RLadies-SanCris", user.email = "rladies.sancris.mx@gmail.com")
usethis::create_github_token() 
gitcreds::gitcreds_set() 
