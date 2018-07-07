# docker-openvpn-client

An OpenVPN docker image to be used a client; including full firewalling on startup.

Based on my [azmo/base](https://hub.docker.com/r/azmo/base/) image, which is originally based on `debian:stable-slim`.

## Usage

- Put your configuration file(s), ending in `.ovpn`, in `config`
- Adjust `.env` accordingly
- `docker-compose up -d`
