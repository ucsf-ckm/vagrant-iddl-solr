#!/bin/bash -e

useradd solr 

cd /vagrant

if ! [ -e /vagrant/jdk-7u55-linux-x64.tar.gz ]; 
then	
	wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u55-b13/jdk-7u55-linux-x64.tar.gz 	
fi
tar -xzf /vagrant/jdk-7u55-linux-x64.tar.gz -C /opt
ln -s /opt/jdk1.7.0_55 /opt/jdk_latest

if ! [ -e /vagrant/solr-4.8.0.tgz ];
then 
	wget http://apache.mirrors.pair.com/lucene/solr/4.8.0/solr-4.8.0.tgz
fi
tar -xzf /vagrant/solr-4.8.0.tgz -C /opt
mv /opt/solr-4.8.0 /opt/solrInstall
mkdir /solr
chmod -R g+w /opt/solrInstall
chown -R root:solr /opt/solrInstall
mv /opt/solrInstall/example /opt/solrInstall/iddl
rm -rf /opt/solrInstall/iddl/exampl* 
mv /opt/solrInstall/iddl/solr/collection1 /opt/solrInstall/iddl/solr/ltdl3
tar -xzf iddl.config.tar.gz -C /opt/solrInstall/iddl/solr/ltdl3
tar -xzf iddldata.tar.gz -C /solr
chown -R root:solr /solr
chmod -R g+w /solr

apt-get -y install apache2
VHOST=$(cat <<EOF
<VirtualHost *:80>
		Header set Access-Control-Allow-Origin "*"
        ProxyPass / http://0.0.0.0:8983/
        ProxyPassReverse / http://0.0.0.0:8983/
</VirtualHost>
EOF
)
echo "${VHOST}" > /etc/apache2/sites-enabled/000-default
a2enmod proxy proxy_http rewrite headers
/etc/init.d/apache2 restart

su - -c "export PATH=$PATH:/opt/jdk1.7.0_55/bin; cd /opt/solrInstall/iddl;java -jar start.jar" solr 2>&1 &



