sw=/opt/bi-s/software
plugins=/usr/lib/nagios/plugins
centplugins=/usr/lib/centreon/plugins
centlog=/var/log/centreon-engine/centengine.log

alias sw="cd $sw"
alias plugins="cd $plugins"
alias centplugins="cd $centplugins"
alias centlog="tail -f $centlog"
alias stirb="shutdown -h now"