FROM eclipse-temurin:17.0.6_10-jre
ENV APP_FILE config-*.jar
ENV APP_HOME /app
EXPOSE 8088
COPY target/$APP_FILE $APP_HOME/config.jar
WORKDIR $APP_HOME
ENTRYPOINT ["sh", "-c"]
CMD ["exec java -jar config.jar"]