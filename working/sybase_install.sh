#Usage: do step-by-step to install sybase on CentOS or RedHat

yum install -y glibc.i686
yum install libstdc++-devel.i686

#edit file /opt/sybase/interfaces to IP instead of localhost

#cd ASExx/install/
./startserver -f filename

service firewalld stop

#https://community.oracle.com/thread/3529265?start=0&tstart=0

#Create new instance
#http://www.experts-exchange.com/questions/28415449/How-to-install-new-sybase-instance-in-Linux.html
#http://infocenter.sybase.com/help/index.jsp?topic=/com.sybase.dc30191_1251/html/utility/X12327.htm

#install service
cp sybase /etc/init.d/
#edit service, port, run file
chmod 775 /etc/init.d/sybase
chkconfig --add sybase
chkconfig sybase on


qip-util -u sa -p 123456 -s QIPVM088204 SetSybaseConfigure