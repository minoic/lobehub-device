# LobeHub execution device

Run `@lobehub/cli` as a persistent remote execution device. Image tags match the exact npm package version.

```sh
mkdir -p workspace
docker compose run --rm lobehub-device lh login
```

Complete browser login, then start the persistent device:

```sh
docker compose up -d
docker compose logs -f
```

Select the device in LobeHub and use `/workspace` as its working directory. The `lobehub-home` volume stores CLI configuration; back it up securely. The workspace directory must be writable by the container's `node` user (UID 1000). The working directory is not a security boundary.

