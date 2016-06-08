Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.network "forwarded_port", guest: 8080, host: 9088
  config.vm.network "forwarded_port", guest: 9083, host: 9083
  config.vm.network "forwarded_port", guest: 22, host: 9022
  config.vm.network "forwarded_port", guest: 9082, host: 9082
  config.vm.network "forwarded_port", guest: 8000, host: 8000
  config.vm.network "forwarded_port", guest: 8800, host: 8800

  config.vm.provider "virtualbox" do |vb|
      vb.memory = "1536"
      # vb.cpus = 2
  end

  config.vm.synced_folder "files", "/tmp/files/"

  # config.vm.network "private_network", ip: "192.168.33.10"

  config.vm.provision "shell", inline: <<-SHELL
    sudo useradd -m user
    sudo usermod -aG sudo user
    sudo su -c  'echo "%sudo ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers'
    sudo su -c  'echo "user:password" | chpasswd'

    sudo apt-add-repository ppa:andrei-pozolotin/maven3
    sudo apt-get -y update
    sudo apt-get -y install phantomjs gradle default-jre default-jdk maven3 daemon unzip git build-essential
  SHELL

  config.vm.provision "shell", inline: <<-SHELL
    wget http://pkg.jenkins-ci.org/debian/binary/jenkins_2.6_all.deb
    sudo dpkg -i jenkins_2.6_all.deb
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/cobertura.hpi -o plugins/cobertura.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/ace-editor.hpi -o plugins/ace-editor.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/antisamy-markup-formatter.hpi -o plugins/antisamy-markup-formatter.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/branch-api.hpi -o plugins/branch-api.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/build-timeout.hpi -o plugins/build-timeout.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/cloudbees-folder.hpi -o plugins/cloudbees-folder.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/config-file-provider.hpi -o plugins/config-file-provider.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/credentials.hpi -o plugins/credentials.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/credentials-binding.hpi -o plugins/credentials-binding.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/durable-task.hpi -o plugins/durable-task.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/email-ext.hpi -o plugins/email-ext.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/external-monitor-job.hpi -o plugins/external-monitor-job.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/git.hpi -o plugins/git.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/git-client.hpi -o plugins/git-client.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/git-server.hpi -o plugins/git-server.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/github.hpi -o plugins/github.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/github-api.hpi -o plugins/github-api.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/github-branch-source.hpi -o plugins/github-branch-source.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/github-organization-folder.hpi -o plugins/github-organization-folder.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/gradle.hpi -o plugins/gradle.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/handlebars.hpi -o plugins/handlebars.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/icon-shim.hpi -o plugins/icon-shim.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/javadoc.hpi -o plugins/javadoc.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/jquery-detached.hpi -o plugins/jquery-detached.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/junit.hpi -o plugins/junit.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/ldap.hpi -o plugins/ldap.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/mailer.hpi -o plugins/mailer.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/mapdb-api.hpi -o plugins/mapdb-api.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/matrix-auth.hpi -o plugins/matrix-auth.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/matrix-project.hpi -o plugins/matrix-project.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/momentjs.hpi -o plugins/momentjs.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/pam-auth.hpi -o plugins/pam-auth.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/pipeline-build-step.hpi -o plugins/pipeline-build-step.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/pipeline-input-step.hpi -o plugins/pipeline-input-step.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/pipeline-rest-api.hpi -o plugins/pipeline-rest-api.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/pipeline-stage-step.hpi -o plugins/pipeline-stage-step.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/pipeline-stage-view.hpi -o plugins/pipeline-stage-view.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/plain-credentials.hpi -o plugins/plain-credentials.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/publish-over-ssh.hpi -o plugins/publish-over-ssh.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/scm-api.hpi -o plugins/scm-api.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/script-security.hpi -o plugins/script-security.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/ssh-credentials.hpi -o plugins/ssh-credentials.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/ssh-slaves.hpi -o plugins/ssh-slaves.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/structs.hpi -o plugins/structs.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/timestamper.hpi -o plugins/timestamper.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/token-macro.hpi -o plugins/token-macro.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/windows-slaves.hpi -o plugins/windows-slaves.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/workflow-aggregator.hpi -o plugins/workflow-aggregator.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/workflow-api.hpi -o plugins/workflow-api.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/workflow-basic-steps.hpi -o plugins/workflow-basic-steps.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/workflow-cps.hpi -o plugins/workflow-cps.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/workflow-cps-global-lib.hpi -o plugins/workflow-cps-global-lib.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/workflow-durable-task-step.hpi -o plugins/workflow-durable-task-step.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/workflow-job.hpi -o plugins/workflow-job.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/workflow-multibranch.hpi -o plugins/workflow-multibranch.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/workflow-scm-step.hpi -o plugins/workflow-scm-step.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/workflow-step-api.hpi -o plugins/workflow-step-api.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/workflow-support.hpi -o plugins/workflow-support.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/ws-cleanup.hpi -o plugins/ws-cleanup.hpi'
    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/xframe-filter-plugin.hpi -o plugins/xframe-filter-plugin.hpi'

    sudo su - jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/xframe-filter-plugin.hpi -o plugins/xframe-filter-plugin.hpi'

    sudo su - jenkins -c 'cp -r /tmp/files/org.jenkins.ci.plugins.xframe_filter.XFrameFilterPageDecorator.xml ~/'



    # replace first true for <useSecurity>true</useSecurity> to <useSecurity>false</useSecurity>
    sudo su - jenkins -c 'sed -i "0,/true/s,true,false," config.xml'
    sudo usermod -aG sudo jenkins
    sudo service jenkins restart

  SHELL

  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
    sudo add-apt-repository -y "deb https://apt.dockerproject.org/repo ubuntu-$(lsb_release -s -c) main"
    sudo apt-get -y update
    sudo apt-get -y install docker-engine
    sudo usermod -a -G docker vagrant
    sudo usermod -a -G docker user
    # sudo usermod -a -G docker jenkins
    sudo su -c 'curl -L https://github.com/docker/compose/releases/download/1.7.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose'
    sudo chmod +x /usr/local/bin/docker-compose
    sudo su - user -l -c 'docker pull ubuntu:16.04'
    sudo su - user -l -c 'docker pull andreptb/maven:3.3.9-jdk8'
    sudo su - user -l -c 'docker pull anapsix/alpine-java:jdk8'
    sudo su - user -l -c 'docker pull mhart/alpine-node-auto:4'
    sudo su - user -l -c 'docker pull alpine:latest'
  SHELL

  config.vm.provision "shell", inline: <<-SHELL
    sudo su - user -l -c 'wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.31.1/install.sh | bash'
    sudo su - user -l -c '. ~/.nvm/nvm.sh && nvm install v4.4.5 && nvm alias default v4.4.5 && npm install pm2 -g'
    sudo su - user -l -c '. ~/.nvm/nvm.sh && pm2 set pm2-webshell:port 9082 && pm2 install pm2-webshell'

    sudo su - user -l -c 'git clone https://github.com/agileworks-tw/pm2-webshell.git'
    sudo su - user -l -c 'cp -r pm2-webshell/node_modules/tty.js/static/ .pm2/node_modules/pm2-webshell/node_modules/tty.js/'
    sudo su - user -l -c 'cp -r pm2-webshell/app.js .pm2/node_modules/pm2-webshell/app.js && rm -rf pm2-webshell'
    sudo su - user -l -c '. ~/.nvm/nvm.sh && pm2 restart pm2-webshell'

  SHELL

  config.vm.provision "shell", inline: <<-SHELL
    sudo su - user -c 'mkdir workspace && cd workspace && git clone https://github.com/agileworks-tw/spring-boot-sample.git'
    sudo su - user -c 'cd workspace/spring-boot-sample && mvn package'
  SHELL

  config.vm.provision "shell", inline: <<-SHELL
    sudo su - user -l -c '. ~/.nvm/nvm.sh && cd workspace && git clone git://github.com/c9/core.git c9sdk && cd c9sdk && scripts/install-sdk.sh'
    sudo su - user -l -c '. ~/.nvm/nvm.sh && cd workspace/c9sdk && pm2 start server.js --name "cloud9" -- --debug -l 0.0.0.0 -p 9083 -w /home/user/workspace -a :'
    sudo su -c "env PATH=$PATH:/home/user/.nvm/versions/node/v4.4.5/bin pm2 startup ubuntu -u user --hp /home/user"
  SHELL

  config.vm.provision "shell", inline: <<-SHELL
    sudo su - user -l -c '. ~/.nvm/nvm.sh && cd workspace && git clone https://github.com/TrunkWorkshop/sailsSample.git && cd sailsSample && npm i'
  SHELL


  config.vm.provision "shell", inline: <<-SHELL
    sudo su - user -c 'java -version'
    sudo su - user -c 'mvn -version'
    sudo su - user -c 'docker -v'
    sudo su - user -c 'docker-compose -v'

    sudo su - user -c 'cd workspace && git clone https://github.com/agileworks-tw/java-hello-world.git'
    sudo su - user -c 'cd workspace/java-hello-world && javac HelloWorld.java && java HelloWorld'
    sudo su - user -c 'cd workspace/java-hello-world && docker run --rm -v `pwd`:/app -w /app anapsix/alpine-java:jdk8 javac HelloWorld.java'
    sudo su - user -c 'cd workspace/java-hello-world && docker run --rm -v `pwd`:/app -w /app anapsix/alpine-java:jdk8 java HelloWorld'
  SHELL

  # config.vm.provision "shell", inline: <<-SHELL
  #
  #   sudo su -c 'echo "deb http://download.virtualbox.org/virtualbox/debian $(lsb_release -s -c) contrib" >> /etc/apt/sources.list'
  #   sudo wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -
  #   sudo apt-get update
  #   sudo apt-get install virtualbox-5.0
  #   sudo su -c 'curl -L https://github.com/docker/machine/releases/download/v0.7.0/docker-machine-`uname -s`-`uname -m` >/usr/local/bin/docker-machine && chmod +x /usr/local/bin/docker-machine'
  #
  # SHELL

end
