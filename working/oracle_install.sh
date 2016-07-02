#Usage: do step-by-step to install oracle on CentOS or RedHat

useradd -m oracle
passwd oracle
#123456
yum install ksh libaio-devel compat-libstdc++-33.x86_64
hostname
nano /etc/hosts
su oracle
sh /opt/database/runInstaller -executePrereqs -silent -waitforcompletion -showProgress -responseFile /home/oracle/db.rsp
#-noconfig -ignorePrereq 