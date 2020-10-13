# README

Build the image with 

docker build -t puma_tls_memory_leak .

Run the image with 

```
docker run --rm -p 3000:3000 -p 3500:3500 puma_tls_memory_leak
```

Port 3000 is bound to HTTPS, 3500 to HTTP.

Running `while :; do curl -k --location 'https://localhost:3000'; done` will increase the RAM used by the application from 26MB (RSS) to 51MB (RSS). Then every minute or so, another extra MB (RSS) will be consumed. Behavior is strongly mitigated, yet still present, when using jemalloc.

If we instead run ``while :; do curl --location 'http://localhost:3500'; done``, the RAM used by the app increase from26 to 30MB (RSS) and eventually, the app will start consuming extra MB of RAM.

I definitely think there is an issue on Puma with TLS.
