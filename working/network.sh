#Usage: do step-by-step to set proxy and repository for CentOS or RedHat 6 or 7

cp yum-redhat/public-yum-ol6.repo /etc/yum.repos.d
cp yum-redhat/RPM-GPG-KEY-oracle-ol6.asc /etc/yum.repos.d
rpm --import /etc/yum.repos.d/RPM-GPG-KEY-oracle-ol6.asc
export http_proxy=http://10.10.10.10:8080


cp yum-redhat/public-yum-ol7.repo /etc/yum.repos.d
cp yum-redhat/RPM-GPG-KEY-oracle-ol7.txt /etc/yum.repos.d
rpm -import /etc/yum.repos.d/RPM-GPG-KEY-oracle-ol7.txt
export http_proxy=http://10.10.10.10:8080