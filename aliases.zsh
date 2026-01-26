#-----------------------------------------------------------------------------------#
#	*START* Base
#-----------------------------------------------------------------------------------#

# Clear
alias c="clear"

# List
alias ll="/opt/homebrew/opt/coreutils/libexec/gnubin/ls -AhlFo --color --group-directories-first"

# Reload shell
alias reloadshell="source $HOME/.zshrc"

# Copy SSH key to clipboard
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519.pub"

# Flush DNS
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"

#-----------------------------------------------------------------------------------#
#	*END* Base
#-----------------------------------------------------------------------------------#

#-----------------------------------------------------------------------------------#
#	*START* HOSTS
#-----------------------------------------------------------------------------------#

alias hosts='sudo subl /etc/hosts'
alias vhosts='sudo subl /etc/apache2/extra/httpd-vhosts.conf'

#-----------------------------------------------------------------------------------#
#	*END* HOSTS
#-----------------------------------------------------------------------------------#

#-----------------------------------------------------------------------------------#
#	*START* NETWORK
#-----------------------------------------------------------------------------------#

# IP addresses
alias ip_intern="ipconfig getifaddr en0"
alias ip_extern="curl ipecho.net/plain; echo"


# Enhanced WHOIS lookups
alias whois="whois -h whois-servers.net"

#-----------------------------------------------------------------------------------#
#	*END* NETWORK
#-----------------------------------------------------------------------------------#

#-----------------------------------------------------------------------------------#
#	*START* DIRECTORIES
#-----------------------------------------------------------------------------------#

alias home="cd ~/"
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"
alias sites="cd $HOME/Sites"

#-----------------------------------------------------------------------------------#
#	*END* DIRECTORIES
#-----------------------------------------------------------------------------------#

#-----------------------------------------------------------------------------------#
#	*START* GIT
#-----------------------------------------------------------------------------------#

alias gst='git status'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias nuke="git reset --hard && git clean -df"
alias gac="git add -A && git commit -m"
alias lg="lazygit"

#-----------------------------------------------------------------------------------#
#	*END* GIT
#-----------------------------------------------------------------------------------#

#-----------------------------------------------------------------------------------#
#	*START* PHP
#-----------------------------------------------------------------------------------#

alias composer="herd composer"
alias art='php artisan'
alias artisan='php artisan'
alias mfs='php artisan migrate:fresh --seed'
alias tinker="php artisan tinker"
alias artclearall='php artisan cache:clear && php artisan view:clear && php artisan config:clear'
alias mt="php artisan make:test --pest "
alias mtu="php artisan make:test --pest --unit "
alias clearlog='truncate -s 0 $PWD/storage/logs/laravel.log'
alias clearlogs='truncate -s 0 $PWD/storage/logs/*.log'
alias ideh="php artisan ide-helper:eloquent && php artisan ide-helper:generate && php artisan ide-helper:meta && php artisan ide-helper:models -N"

#-----------------------------------------------------------------------------------#
#	*END* PHP
#-----------------------------------------------------------------------------------#

#-----------------------------------------------------------------------------------#
#	*START* DOCKER/TAKEOUT
#-----------------------------------------------------------------------------------#

alias takeout="docker run --rm -v /var/run/docker.sock:/var/run/docker.sock --add-host=host.docker.internal:host-gateway -it tighten/takeout:latest"

#-----------------------------------------------------------------------------------#
#	*END* DOCKER/TAKEOUT
#-----------------------------------------------------------------------------------#
