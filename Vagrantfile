Vagrant.configure("2") do |config|

  config.vm.box = "kmmiles/debian-stretch64" 
  
  config.vm.provision :shell, path: "bootstrap.sh"

  config.vm.network "forwarded_port", guest: 8888, host: 8888
  
  config.vm.synced_folder "./Notebooks", "/home/vagrant/Notebooks"

  # Set Password to mpetersen
  config.vm.provision "docker" do |d|
    d.run "jupyter/base-notebook", args: "-p 8888:8888 -v /home/vagrant/Notebooks:/home/jovyan/work", cmd: "start-notebook.sh --NotebookApp.password='sha1:dc32b6e7afff:20605867c43bdf2787c5d8d193432e5cbfd139bf'"
  end

end
