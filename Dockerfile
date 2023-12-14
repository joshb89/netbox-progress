# Use the official Python image as the base image
#FROM netboxcommunity/netbox:latest-ldap
FROM netboxcommunity/netbox:latest
#FROM netboxcommunity/netbox:v3.5.9

USER unit:root
COPY ./configuration.py /etc/netbox/config/configuration.py

# Expose port 8000 for NetBox
EXPOSE 8000:8080/tcp

# Set environment variables for Postgres as well as some foundational app settings
ENV DB_NAME=netbox
ENV DB_USER=netbox
#ENV DB_PASSWORD=J5brHrAXFLQSif0K
ENV DB_HOST=netbox.postgres.database.azure.com
#ENV SECRET_KEY=r(m)9nLGnz$(_q3N4z1k(EFsMCjjjzx08x9VhNVcfd%6RF#r!6DE@+V5Zk2X
ENV CORS_ORIGIN_ALLOW_ALL=True
ENV EMAIL_FROM=netbox@bar.com
ENV EMAIL_PASSWORD=
ENV EMAIL_PORT=25
ENV EMAIL_SERVER=localhost
ENV EMAIL_SSL_CERTFILE=
ENV EMAIL_SSL_KEYFILE=
ENV EMAIL_TIMEOUT=5
ENV EMAIL_USERNAME=netbox
ENV EMAIL_USE_SSL=false
ENV EMAIL_USE_TLS=false
ENV GRAPHQL_ENABLED=true
ENV HOUSEKEEPING_INTERVAL=86400
ENV MEDIA_ROOT=/opt/netbox/netbox/media
ENV METRICS_ENABLED=false
ENV RELEASE_CHECK_URL=https://api.github.com/repos/netbox-community/netbox/releases
ENV SKIP_SUPERUSER=true
ENV WEBHOOKS_ENABLED=true
#ENV DB_PASSWORD=secretref:dbpassword

#Testing Network Team phonebox Plugin
COPY ./phonebox_plugin /source/phonebox_plugin/phonebox_plugin/
COPY ./setup.py /source/phonebox_plugin/
COPY ./MANIFEST.in /source/phonebox_plugin/
COPY ./README.md /source/phonebox_plugin/
USER root
RUN pip3 install --no-cache-dir /source/phonebox_plugin/

#Network team ACL plugin
#RUN pip3 install netbox-acls

#Setting user back to unit for service operations
USER unit:root
