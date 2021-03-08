bundle install

rm -rf /opt/ANDRAX/metasploit-framework

cp -Rf $(pwd) /opt/ANDRAX/metasploit-framework

cp -Rf andraxbin/* /opt/ANDRAX/bin

chmod -R 755 /opt/ANDRAX/bin
