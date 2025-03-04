#!/bin/sh
openssl req -x509 -newkey rsa:4096 -sha256 -days 3650 \
  -nodes -keyout dng-ri.key -out dng-ri.crt -subj "/CN=example.com" \
  -addext "subjectAltName=DNS:example.com,DNS:*.example.com,IP:10.0.0.1"