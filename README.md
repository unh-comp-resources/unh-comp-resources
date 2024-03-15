# UNH COMPUTING RESOURCES

[Computing-Website](https://unh-comp-resources.github.io/unh-comp-resources/)

[Hugo Installation](https://github.com/gohugoio/hugo/releases)

[Download Docker from Official Website](https://www.docker.com/get-started/)

#### Check Hugo installantion
```sh
hugo version
```

#### Run site locally
```sh
hugo server
```

#### Check docker installation
```sh
docker pull hello-world
```
#### Check the log
    What's Next? 
    View a summary of image vulnerabilities and recommendations → docker scout quickview hello-world
#### Docker build
```sh
docker build -t unh-comp-resources .
```
#### Docker Run
```sh
docker run -p 8080:80 unh-comp-resources
```