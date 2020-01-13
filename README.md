# docker-openvpn-client

An OpenVPN docker image to be used a client; including full firewalling on startup.

## Usage

- Put your configuration file(s), ending in `.ovpn`, in `config`
  - Make sure endpoint(s) are resolved to ip adresses since DNS will be fully firewalled off
- Adjust `.env` accordingly
- `docker-compose up -d`
