# ariang-image

> AriaNg Docker Image

## Usage

```sh
# pull
docker pull giterhub/ariang:latest

# run
docker run -d \
    --name ariang \
    --restart unless-stopped \
    -p 80:80 \
    giterhub/ariang:latest
```

## Docker Hub Image

- [giterhub/ariang](https://hub.docker.com/r/giterhub/ariang)

## Credits

- [mayswind/AriaNg](https://github.com/mayswind/AriaNg)
- [LightAPIs/darkhttpd-image](https://github.com/LightAPIs/darkhttpd-image)
