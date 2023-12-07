# Use the official Python image as the base image
FROM netboxcommunity/netbox:latest as main


# Expose port 8000 for NetBox
EXPOSE 8000:8080/tcp

# Set environment variables for PostgreSQL connection
ENV DB_NAME=netbox
ENV DB_USER=netbox
ENV DB_PASSWORD=J5brHrAXFLQSif0K
ENV DB_HOST=netbox.postgres.database.azure.com
ENV SECRET_KEY=r(m)9nLGnz$(_q3N4z1k(EFsMCjjjzx08x9VhNVcfd%6RF#r!6DE@+V5Zk2X



