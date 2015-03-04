MySQL DB 2 HTML
============

A simple bash script to export the MySQL DB tables content into an HTML file.

Common use case: create a database with [MySQL views](http://dev.mysql.com/doc/refman/5.5/en/create-view.html) you need to monitor and send the full content via mail as a report (see a linux cron table example below).

It can be easily modified to work with single tables if you need to, with an additional parameter, send a pull request in case

Usage and setup
--------------
Chmod +x `files/mysqldb2html` and pass the db name as a only parameter

 * mysqldb2html <dbname>

 * Pipe output into file

    ```mysqldb2html dbname > /path/to/output.html```

 * Crontab entry to mail db content into a midnight mail.

    ```0 0 * * *  /usr/local/bin/mysqldb2html yourdbname | mail -s 'database report' -a 'Content-Type: text/html' your@mail.com```

Install (binary only)
---------------------
    sudo wget -O /usr/local/bin/mysqldb2html  https://raw.githubusercontent.com/elvisciotti/mysqldb2html/master/files/mysqldb2html
    chmod +x /usr/local/bin/mysqldb2html
    
Install (puppet)
----------------
Use this directory as a puppet module
