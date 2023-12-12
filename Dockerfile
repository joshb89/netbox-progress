# Use the official Python image as the base image
FROM netboxcommunity/netbox:latest

USER unit:root
# Expose port 8000 for NetBox
EXPOSE 8000:8080/tcp

# Set environment variables for PostgreSQL connection
ENV DB_NAME=netbox
ENV DB_USER=netbox
ENV DB_PASSWORD=J5brHrAXFLQSif0K
ENV DB_HOST=netbox.postgres.database.azure.com
ENV SECRET_KEY=r(m)9nLGnz$(_q3N4z1k(EFsMCjjjzx08x9VhNVcfd%6RF#r!6DE@+V5Zk2X
ENV CORS_ORIGIN_ALLOW_ALL=True
ENV EMAIL_FROM=netbox@bar.com
ENV EMAIL_PASSWORD=
ENV EMAIL_PORT=25
ENV EMAIL_SERVER=localhost
ENV EMAIL_SSL_CERTFILE=
ENV EMAIL_SSL_KEYFILE=
ENV EMAIL_TIMEOUT=5
ENV EMAIL_USERNAME=netbox
# EMAIL_USE_SSL and EMAIL_USE_TLS are mutually exclusive, i.e. they can't both be `true`!
ENV EMAIL_USE_SSL=false
ENV EMAIL_USE_TLS=false
ENV GRAPHQL_ENABLED=true
ENV HOUSEKEEPING_INTERVAL=86400
ENV MEDIA_ROOT=/opt/netbox/netbox/media
ENV METRICS_ENABLED=false
ENV REDIS_CACHE_DATABASE=1
ENV REDIS_CACHE_HOST=redis-cache
ENV REDIS_CACHE_INSECURE_SKIP_TLS_VERIFY=false
ENV REDIS_CACHE_PASSWORD=t4Ph722qJ5QHeQ1qfu36
ENV REDIS_CACHE_SSL=false
ENV REDIS_DATABASE=0
ENV REDIS_HOST=redis
ENV REDIS_INSECURE_SKIP_TLS_VERIFY=false
ENV REDIS_PASSWORD=H733Kdjndks81
ENV REDIS_SSL=false
ENV RELEASE_CHECK_URL=https://api.github.com/repos/netbox-community/netbox/releases
ENV SKIP_SUPERUSER=true
ENV WEBHOOKS_ENABLED=true
