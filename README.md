# r-igraph-docker

docker image for testing R packages with igraph dependencies

R version 4.0.2

igraph version 1.2.5

Installs all necessary dependencies. See [here](https://docs.docker.com/get-started/) for how to get set up with docker.

1. Download

```
docker pull tomkellygenetics/r-igraph:latest
```

2. Test call

```
docker run -it tomkellygenetics/r-igraph:latest R -e 'library("igraph"); sessionInfo()'
```

3. Interactive session

```
docker run -it tomkellygenetics/r-igraph:latest
R
library("igraph")
```
