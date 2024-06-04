FROM eclipse-temurin:11-jdk AS builder

# Install Maven
RUN apt-get update && \
    apt-get install -y maven

# Copy Maven settings
COPY settings-docker.xml /usr/share/maven/ref/

# Copy entrypoint script
COPY mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh
RUN chmod +x /usr/local/bin/mvn-entrypoint.sh

# Set entrypoint
ENTRYPOINT ["mvn-entrypoint.sh"]

# Verify installation
RUN mvn --version

# Final stage
FROM eclipse-temurin:11-jdk
COPY --from=builder /usr/share/maven /usr/share/maven
COPY mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh
COPY settings-docker.xml /usr/share/maven/ref/
RUN ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
