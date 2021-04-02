# Useful scripts

## Powerful command with one line

### Network

Open an http proxy.
(need ncat in nmap)

```
ncat -l 3138 --proxy-type http
```

Open an socks5 proxy.

```
ssh -D 3138 localhost
```