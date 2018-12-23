TAG=neuronale-netze
PORT=8888

build:
	docker build -f Docker/Dockerfile -t $(TAG) .

run:
	docker run -it -p $(PORT):$(PORT) -v $$PWD/Notebooks:/home/jovyan/work $(TAG) start-notebook.sh --NotebookApp.password='sha1:c514e6bef6bd:1574782feca67c518519fa1b470100a3d8ff615b'
