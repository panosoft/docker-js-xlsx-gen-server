# JS Xlsx Gen Server

> Official Docker Image Build Context for [`js-xlsx-gen-server`](https://github.com/panosoft/js-xlsx-gen-server)

## Usage

Ports:

- `8443` - HTTPS JS Xlsx Gen server

Volumes:

- `/credentials:ro`
  - `server.key` - A private TLS key in PEM format.
  - `server.crt` - A public TLS certificate in PEM format.
