#!/usr/bin/env bash
docker run -p 8888:8888 -v $PWD/Notebooks:/home/jovyan jupyter/base-notebook start.sh start-notebook.sh --NotebookApp.password='sha1:c514e6bef6bd:1574782feca67c518519fa1b470100a3d8ff615b'
