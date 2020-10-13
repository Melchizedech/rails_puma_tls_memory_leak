# README

Build the image with 

docker build -t rails_api_tls_memory_leak .

Run the image with 

```
docker run --rm -e RAILS_ENV=production -p 3000:3000 -p 3500:3500 rails_api_tls_memory_leak
```

Port 3000 is bound to HTTPS, 3500 to HTTP.

