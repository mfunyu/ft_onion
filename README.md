# ft_onion

## walkthrough

```
cd /etc/tor/torrc
```
```
cat /var/lib/tor/hidden_service/
```

### Launching tor
```
cd tor-browser
./start-tor-browser.desktop
```

## utils

### inside docker
```
service --status-all
```

### docker control

```
docker build . -t tor
docker run -p 8080:80 tor
```

```
docker stop $(docker ps -q)
```
