FROM abdoulayediaw/jdk:11
RUN ["mkdir","--parents","/home/guestu/services/security/keycloak"]
ADD keycloak-15.0.2 /home/guestu/services/security/keycloak/keycloak-15.0.2
RUN ["/home/guestu/services/security/keycloak/keycloak-15.0.2/bin/add-user-keycloak.sh","-r","master","-u","admin","-p","admin"]
EXPOSE 8080 8009 9990 4712 4713
ENTRYPOINT [ "/bin/bash","/home/guestu/services/security/keycloak/keycloak-15.0.2/bin/standalone.sh"]