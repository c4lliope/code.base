FROM gitea/gitea:latest

COPY sbin/* /sbin/
RUN mkdir -p $GITEA__server__APP_DATA_PATH
WORKDIR $GITEA__server__APP_DATA_PATH

ENTRYPOINT ["/sbin/dokku-entrypoint.sh"]
CMD ["/bin/s6-svscan", "/etc/s6"]
