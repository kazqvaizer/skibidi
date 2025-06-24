# Dockerfile
FROM alpine:latest

# Install dependencies
RUN apk add --no-cache sqlite py3-pip

# Set up Python virtual environment
RUN python3 -m venv /app/venv

# Activate virtualenv and install sqlite-web
RUN /app/venv/bin/pip install --upgrade pip && \
    /app/venv/bin/pip install sqlite-web

# Create database directory
RUN mkdir -p /db

# Expose port
EXPOSE 8080

# Start sqlite-web server on database file
CMD ["/app/venv/bin/sqlite_web", "/db/database.db", "-H", "0.0.0.0", "-p", "8080"]

