TAG=neuronale-netze
PORT=8888
TRAIN=mnist_train.csv
TEST=mnist_test.csv
TRAIN100=mnist_train_100.csv
TEST10=mnist_test_10.csv

build:
	docker build -f Docker/Dockerfile -t $(TAG) .

run:
	docker run -it -p $(PORT):$(PORT) -v $$PWD/Notebooks:/home/jovyan/work -v $$PWD/Data:/home/jovyan/data $(TAG) start-notebook.sh --NotebookApp.password='sha1:c514e6bef6bd:1574782feca67c518519fa1b470100a3d8ff615b'

download_data:
	test -f Data/$(TRAIN) || curl -o Data/$(TRAIN) https://pjreddie.com/media/files/$(TRAIN)
	test -f Data/$(TEST) || curl -o Data/$(TEST) https://pjreddie.com/media/files/$(TEST)
	test -f Data/$(TRAIN100) || curl -o Data/$(TRAIN100) https://raw.githubusercontent.com/makeyourownneuralnetwork/makeyourownneuralnetwork/master/mnist_dataset/$(TRAIN100)
	test -f Data/$(TEST10) || curl -o Data/$(TEST10) https://raw.githubusercontent.com/makeyourownneuralnetwork/makeyourownneuralnetwork/master/mnist_dataset/$(TEST10)
