dnf update 
dnf -y install  sssd realmd oddjob oddjob-mkhomedir adcli samba-common samba-common-tools krb5-workstation openldap-clients policycoreutils-python* 
dnf install -y httpd
systemctl enable httpd --now 
 firewall-cmd --add-service http --permanent 
 firewall-cmd --reload
 systemctl restart firewalld
 firewall-cmd --add-port 3260/tcp --permanent 
 firewall-cmd --reload
 wget https://quadstor.com/vtldownloads/quadstor-vtl-ext-3.0.57-rhel.x86_64.rpm
 dnf install -y ./quadstor-vtl-ext-3.0.57-rhel.x86_64.rpm 
 dnf upgrade -y
 yum upgrade -y
 yum install -y httpd gcc perl kernel-devel sg3_utils iotop sysstat tar 
 yum upgrade -y kernel
 yum upgrade -y kernel-devel 
 dnf upgrade -y
 clear
 yum install -y httpd gcc perl kernel-devel sg3_utils iotop sysstat tar 
 yum upgrade -y kernel 
 yum install -y compat-openssl10 elfutils-libelf-devel policycoreutils policycoreutils-python-utils -y
 systemctl enable quadstorvtl --now
 yum install -y httpd gcc perl kernel-devel sg3_utils policycoreutils-python 
 setsebool -P httpd_enable_cgi 1 
 semanage permissive -a httpd_t
 firewall-cmd --permanent --add-port=80/tcp
 firewall-cmd --permanent --add-port=3260/tcp
 firewall-cmd --reload 
 reboot
