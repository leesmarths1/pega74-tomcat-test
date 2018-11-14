FROM tomcat:9.0.10-jre8
LABEL version="1.0"
LABEL description="Pega7.4 tomcat web application server"
ADD web.xml /usr/local/tomcat/conf/ 
ADD tomcat-users.xml /usr/local/tomcat/conf/
ADD context.xml /usr/local/tomcat/conf/
ADD setenv.bat /usr/local/tomcat/bi
ADD prhelp.war /usr/local/tomcat/webapps/prhelp.war
ADD META-INF/context.xml /usr/local/tomcat/webapps/manager/META-INT/context.xml
ADD prsysmgmt.war /usr/local/tomcat/webapps/prsysmgmt.war
ADD prweb.war /usr/local/tomcat/webapps/prweb.war
ADD mssql-jdbc-6.2.2.jre8.jar /usr/local/tomcat/lib/mssql-jdbc-6.2.2.jre8.jar
EXPOSE 8080
