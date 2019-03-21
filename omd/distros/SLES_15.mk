DISTRO_CODE     = sles15
OS_PACKAGES     =
OS_PACKAGES    += cronie # needed for sites cron jobs
OS_PACKAGES    += net-tools # traceroute is needed for Check_MK parent scan
OS_PACKAGES    += apache2
OS_PACKAGES    += bind-utils # check_dns
OS_PACKAGES    += curl
OS_PACKAGES    += dialog
OS_PACKAGES    += libgd3
OS_PACKAGES    += graphviz
OS_PACKAGES    += libpng16-16
OS_PACKAGES    += libevent-2_1-8
OS_PACKAGES    += libltdl7
OS_PACKAGES    += libreadline7
OS_PACKAGES    += libuuid1
OS_PACKAGES    += pango
OS_PACKAGES    += php7-fastcgi
OS_PACKAGES    += php7-gd
OS_PACKAGES    += php7-iconv
OS_PACKAGES    += php7-mbstring
OS_PACKAGES    += php7-pear
OS_PACKAGES    += php7-sockets
OS_PACKAGES    += php7-sqlite
OS_PACKAGES    += php7-openssl
OS_PACKAGES    += rsync
OS_PACKAGES    += samba-client
OS_PACKAGES    += rpcbind
OS_PACKAGES    += unzip
OS_PACKAGES    += xinetd
OS_PACKAGES    += xorg-x11-fonts
OS_PACKAGES    += freeradius-client-libs
OS_PACKAGES    += binutils # Needed by Check_MK Agent Bakery
OS_PACKAGES    += rpm-build # Needed by Check_MK Agent Bakery
OS_PACKAGES    += libgio-2_0-0 # needed by msitools/Agent Bakery
OS_PACKAGES    += cpio # needed for Agent bakery (solaris pkgs)
OS_PACKAGES    += poppler-tools # needed for preview of PDF in reporting
OS_PACKAGES    += libpcap1 # needed for ICMP of CMC
OS_PACKAGES    += libffi7 # needed for pyOpenSSL and dependant
OS_PACKAGES    += libjpeg62 # needed by PIL
OS_PACKAGES    += libgthread-2_0-0 # Needed by cmc (rrd library)
OS_PACKAGES    += libpq5
USERADD_OPTIONS   = -M
ADD_USER_TO_GROUP = gpasswd -a %(user)s %(group)s
PACKAGE_INSTALL   = zypper -n refresh ; zypper -n install
ACTIVATE_INITSCRIPT = chkconfig --add %s
APACHE_CONF_DIR   = /etc/apache2/conf.d
APACHE_INIT_NAME  = apache2
APACHE_USER       = wwwrun
APACHE_GROUP      = www
APACHE_BIN        = /usr/sbin/httpd2-prefork
APACHE_CTL        = /usr/sbin/apache2ctl
APACHE_MODULE_DIR = /usr/lib/apache2-prefork
APACHE_MODULE_DIR_64 = /usr/lib64/apache2-prefork
HTPASSWD_BIN      = /usr/bin/htpasswd2
PHP_FCGI_BIN	  = /usr/bin/php-cgi
APACHE_ENMOD      = a2enmod %s
BECOME_ROOT       = su -c
MOUNT_OPTIONS     =
INIT_CMD          = /usr/bin/systemctl %(action)s %(name)s.service