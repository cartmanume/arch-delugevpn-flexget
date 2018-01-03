FROM binhex/arch-delugevpn

#Add flexget.conf for supervisor
ADD flexget.conf /etc/supervisor/conf.d/

#Add build script
ADD build.sh /build.sh

#Run build script
RUN chmod +x /build.sh && /build.sh

#Add flexget start-script
ADD flexget.sh /home/nobody

#Add default config
ADD config.yml /home/nobody/flexget.yml

#Exec
RUN chmod +x /home/nobody/flexget.sh

