# Docker container for Julia in Jupyter

Dockerfile for [Julia](https://julialang.org/) in jupyter notebook.

It's on [dockerhub](https://hub.docker.com/r/naotokubota/julia_jupyter) and [github](https://github.com/NaotoKubota/julia_jupyter).

## tags and links
- `1.8.3` [(master/Dockerfile)](https://github.com/NaotoKubota/julia_jupyter/blob/master/Dockerfile)

## how to build

```sh
docker pull naotokubota/julia_jupyter:1.8.3
```

or

```sh
git clone git@github.com:NaotoKubota/julia_jupyter.git
cd julia_jupyter
docker build --rm -t naotokubota/julia_jupyter:1.8.3 .
```

## running

```sh
docker run --rm -v `pwd`:/home/jovyan/work -p 10000:8888 naotokubota/julia_jupyter:1.8.3 jupyter notebook --allow-root
```

Copy token, access `localhost:10000` on your local browser, and paste token.