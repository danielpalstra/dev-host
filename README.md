# Setup a dev-host

Run some ansible playbooks to set up a development host on any vm. The script assumes it's running
under root which should be illegal.

```shell
curl -sSL https://raw.githubusercontent.com/danielpalstra/dev-host/master/install.sh | bash
```

Test the install script in an Ubuntu 16.04 Docker container.

```shell
docker run --privileged -it -v ${PWD}:/config dev-host bash -c "cd /config && sh install.sh && bash"
```

## TODO

- Install user config from git repository
- Install development tooling
- Create non-root user

