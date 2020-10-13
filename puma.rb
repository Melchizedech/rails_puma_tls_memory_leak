threads 1, 1
workers 1
ssl_bind '0.0.0.0', 3000, {
    key: "certificates/certificate.key",
    cert: "certificates/certificate.crt",
    verify_mode: 'none',
    no_tlsv1: true,
    no_tlsv1_1: true
  }

bind 'tcp://0.0.0.0:3500'

# Specifies the `pidfile` that Puma will use.
pidfile ENV.fetch("PIDFILE") { "server.pid" }
