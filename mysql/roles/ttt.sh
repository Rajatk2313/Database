 password_match=`awk '/A temporary password is generated for/ {a=$0} END{ print a }' /var/log/mysqld.log | awk '{print $(NF)}'`
      echo $password_match
      mysql -uroot -p$password_match --connect-expired-password -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'PassW0rd'; flush privileges; "
      echo "[client]";
      user=root
      password=PassW0rd > /root/.my.cnf

