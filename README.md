# xfinity-usage-docker

This repository packages Jason Antman's [xfinity-usage](https://github.com/jantman/xfinity-usage) tool into a Docker image. It uses [PhantomJS](http://phantomjs.org).

## Usage

Pull the `raws/xfinity-usage:latest` image from [Docker Hub](https://hub.docker.com/r/raws/xfinity-usage/) and run it. By default, the image runs `xfinity-usage -h`, so in order to do anything useful, you'll need to specify your own command.

```sh
docker run --rm -e XFINITY_USER=foo -e XFINITY_PASSWORD=s3cr3t raws/xfinity-usage:latest xfinity-usage --graphite
```

## License

MIT
