# Neuronale Netze

Some exercises in the context of [Neuronale Netze selbst programmieren](https://www.oreilly.de/buecher/12892/9783960090434-neuronale-netze-selbst-programmieren.html)
to use for the examples at https://github.com/makeyourownneuralnetwork/makeyourownneuralnetwork.git

## Run Jupyter in Docker

You can run Jupyter locally in a Docker container. First you need to build the container:

    make build

Then you can run the container:

    make run

Or in just one line:

    make build run

Jupyter will be available at http://localhost:8888 with default password `geheim123` and you can stop the container with Ctrl-C.

See the [Dockerfile](Docker/Dockerfile) for more information.

## Vagrant usage on Windows 10

Just run

    vagrant up

and the docker will run inside a debian-stretch box. Default password is set to `mpetersen` and use http://localhost:8888 to connect.
