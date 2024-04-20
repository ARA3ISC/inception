FROM debian:bullseye

# Install necessary packages
RUN apt update && apt upgrade -y && apt install -y redis

# Copy Redis configuration script
# COPY ./tools/redis-script.sh /

# Set executable permissions on the script
# RUN chmod +x redis-script.sh

# Expose Redis default port
EXPOSE 6379

RUN service redis-server start

# Start the Redis server using the script
CMD ["redis-server", "--protected-mode", "no"]
