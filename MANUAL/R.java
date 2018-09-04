# RStudio Config


sudo ln -f -s $(/usr/libexec/java_home)/jre/lib/server/libjvm.dylib /usr/local/lib


LD_LIBRARY_PATH=$(/usr/libexec/java_home)/jre/lib/server: open -a RStudio

alias rstudio='LD_LIBRARY_PATH=$(/usr/libexec/java_home)/jre/lib/server: open -a RStudio