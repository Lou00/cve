FROM tomcat


ADD run.sh $CATALINA_HOME/bin/run.sh
ADD shiro.war $CATALINA_HOME/webapps
RUN chmod +x $CATALINA_HOME/bin/run.sh

EXPOSE 8080
CMD ["run.sh"]