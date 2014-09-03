MySQL DB 2 HTML
============

A simple bash script to export the MySQL DB tables content into an HTML file.

Common use case: create a database with [MySQL views](http://dev.mysql.com/doc/refman/5.5/en/create-view.html) and send the content via mail as a report (see a linux cron table example below).

Usage and setup
--------------
Chmod +x `files/mysqldb2html` and pass the db name as a only parameter

 * mysqldb2html <dbname>

 * Pipe output into file

    ```mysqldb2html dbname > /path/to/output.html```

 * Crontab entry to mail db content into a midnight mail.

    ```0 0 * * *  /usr/local/bin/mysqldb2html yourdbname | mail -s 'database report' -a 'Content-Type: text/html' your@mail.com```

Install
-------
Copy or symlink into `/usr/local/bin` or use this directory as a puppet module
