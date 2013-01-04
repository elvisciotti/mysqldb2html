class mysqldb2html {

    file { "/usr/bin/mysqldb2html":
        mode => 700,
        owner => root,
        group => root,
        source => "puppet:///modules/mysqldb2html/mysqldb2html"
    }

    #cron { "mysqldb2htmlToMail":
    #    ensure => "present",
    #    command => "/usr/local/bin/mysqldb2html yourdbname | mail -s 'database report' -a 'Content-Type: text/html' your@mail.com",
    #    user    => root,
    #    minute  => 0,
    #    hour    => 0
    #}
}
