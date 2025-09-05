# Base image Tomcat 9 + JDK 17
FROM tomcat:9.0-jdk17-temurin

# Set working dir
WORKDIR /usr/local/tomcat

# Xóa các app mặc định
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy toàn bộ thư mục web (bao gồm WEB-INF, JSP, CSS, includes…)
COPY web /usr/local/tomcat/webapps/ROOT

# Expose port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
