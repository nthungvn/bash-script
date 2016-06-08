#Usage: install essential package to install vitalqip on RedHat or CentOS
yum remove glibc-headers.x86_64

yum install gcc gcc-c++ glibc-devel.i686
yum install compat-libcap1
yum install libgcc.i686 libgcc.x86_64 compat-gcc-44.x86_64 compat-gcc-44-c++.x86_64
yum install libstdc++.i686 libstdc++.x86_64 libstdc++-devel.i686 libstdc++-devel.x86_64
