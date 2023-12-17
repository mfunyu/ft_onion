# ft_onion - OTP (Cybersecurity)

## walkthrough

- build & run
```
docker build . -t tor
docker run -p 8080:80 -p 4000:4242 tor
```
- find tor link
```
cat /var/lib/tor/hidden_service/hostname
```

### launch tor
```
cd tor-browser
./start-tor-browser.desktop
```

### connect to ssh
```
ssh -p 4000 user@localhost
# password
```


## Helps

### inside docker
```
service --status-all
```

### docker control

- stop all
```
docker stop $(docker ps -q)
```
- delete all
```
docker system prune -a
```
