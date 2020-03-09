# Docker Tor-Relay
An Docker image of Tor Relay based on the latest stable Debian image

```bash
docker run -d --restart unless-stopped --name "tor-relay-testing" \
-p 9001:9001/tcp \
-p 9050:9050/tcp \
-p 9031:9030/tcp \
-e "TZ=Europe/Madrid" \
-v '/mnt/user/appdata/tor-data/config/':'/etc/tor/':'rw' \
fortu/tor-relay-testing
```
