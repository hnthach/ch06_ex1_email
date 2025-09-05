# Base image: Tomcat 9 + JDK 17
FROM tomcat:9.0-jdk17-temurin

# Set working dir in container
WORKDIR /usr/local/tomcat

# Xóa các app mặc định của Tomcat (ROOT, examples…)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy project vào Tomcat webapps/ROOT
# Nếu bạn build sẵn file .war thì COPY file .war
# Còn nếu muốn copy exploded folder (web, WEB-INF…) thì copy nguyên
COPY web /usr/local/tomcat/webapps/ROOT
COPY build /usr/local/tomcat/webapps/ROOT/WEB-INF/classes

# Expose port 8080 cho container
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
