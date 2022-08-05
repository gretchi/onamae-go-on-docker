# onamae DDNS go on Docker

forked from [miya-masa/onamae-go](https://github.com/miya-masa/onamae-go)


## Installation

```
# Copy the environment file and Edit.
cp example.env .env

# Using Docker example
docker build -t onamae-dokcer .

# Using docker-compose
docker-compose build
```

## Usage

```
# Using Docker example
docker run --env-file .env onamae-dokcer

# Using docker-compose
docker-compose up
```

You can register with systemd. See the unit file example below.

```
[Unit]
Description=onamae

[Service]
Type=simple
WorkingDirectory=/path/to/onamae-docker
ExecStart=/path/to/docker-compose -p onamae-go-on-docker -f /path/to/onamae-docker/docker-compose.yml up onamae-go
ExecStop=/path/to/docker-compose -p onamae-go-on-docker -f /path/to/onamae-docker/docker-compose.yml down onamae-go
ExecReload=/path/to/docker-compose -p onamae-go-on-docker -f /path/to/onamae-docker/docker-compose.yml restart onamae-go
Restart=always
User=<user>
Group=<group>

[Install]
WantedBy=multi-user.target

```

## License

MIT license. See [LICENSE](./LICENSE).

With gratitude to [miya-masa](https://github.com/miya-masa)
