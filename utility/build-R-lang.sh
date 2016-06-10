sudo apt-get install fort77 xorg-dev libcairo2-dev
gfortran

# configure: error: X11 not found but required, configure aborted.
sudo apt-get install r-cran-rgl xorg-dev libX11-dev

#  configure: error: --with-x=yes (default) and X11 headers/libs are not 
sudo apt-get install libXt-dev libX11-dev

#configure: error: missing required header GL/gl.h 
sudo apt-get install mesa-common-dev

#configure: error: missing required header GL/glu.h
sudo apt-get install libglu1-mesa-dev
