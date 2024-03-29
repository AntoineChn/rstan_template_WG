f.open.wd = function(){
  source("functions/get_os.R")
  os = get_os()
  if(os == "osx"){
    system("open -a Finder ./")
  }else{
    message('This only works on MacOS')
  }
  rm(get_os, pos=.GlobalEnv)
}

f.open.stan_fit = function(path = "stan_fit"){
  source("functions/get_os.R")
  os = get_os()
  if(os == "osx"){
    system(paste0("open -a Finder ./", path))
  }else{
    message('This only works on MacOS')
  }
  rm(get_os, pos=.GlobalEnv)
}

f.open.stan_code = function(path = "stan_code"){
  source("functions/get_os.R")
  os = get_os()
  if(os == "osx"){
    system(paste0("open -a Finder ./", path))
  }else{
    message('This only works on MacOS')
  }
  rm(get_os, pos=.GlobalEnv)
}

cat("THREE functions are imported\n",
    "f.open.wd() : open working directory on MacOS \n",
    "f.open.stan_fit() : open ./stan_fit/ folder on MacOS \n",
    "f.open.stan_code() : open ./stan_code/ folder on MacOS")
