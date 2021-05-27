Containerized fork of https://github.com/rmmh/skybot

# Skybot

## Goals
* simplicity
  * little boilerplate
  *  minimal magic
* power
  * multithreading
  * automatic reloading
  * extensibility

# Features
* Multithreaded dispatch and the ability to connect to multiple networks at a time.
* Easy plugin development with automatic reloading and a simple hooking API.

## Startup

- Create `config.json` and [configure](https://github.com/rmmh/skybot/blob/master/docs/Configuration.md)
- Mount `config.json` to `/home/appuser/config.json`
- Mount any plugins to `/home/appuser/home/appuser/plugins/plugin`

### Docker Compose Example

```
  skybot:
    image: daviddever/skybot:latest
    container_name: skybot
    environment:
      - PUID=1000
      - PGID=1000
    volumes:
      - /skybot/config.json:/home/appuser/config.json
      - /skybot/plugins/plugin.py:/home/appuser/plugins/plugin.py
    restart: unless-stopped
```

## License
Skybot is public domain. If you find a way to make money using it, I'll be very impressed.

See LICENSE for precise terms.
