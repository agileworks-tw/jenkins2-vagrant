Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.network "forwarded_port", guest: 8080, host: 9088
  config.vm.network "forwarded_port", guest: 9083, host: 9083
  config.vm.network "forwarded_port", guest: 22, host: 9022
  config.vm.network "forwarded_port", guest: 9082, host: 9082
  config.vm.network "forwarded_port", guest: 8000, host: 8000
  config.vm.network "forwarded_port", guest: 8800, host: 8800

  # config.vm.synced_folder "ansible", "/tmp/ansible/"

  # config.vm.network "private_network", ip: "192.168.33.10"

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-add-repository ppa:andrei-pozolotin/maven3
    sudo apt-get -y update
    sudo apt-get -y install maven3 daemon unzip git
  SHELL

  config.vm.provision "shell", inline: <<-SHELL
    wget http://pkg.jenkins-ci.org/debian/binary/jenkins_2.6_all.deb
    sudo dpkg -i jenkins_2.6_all.deb
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/cobertura.hpi -o /var/lib/jenkins/plugins/cobertura.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/ace-editor.hpi -o /var/lib/jenkins/plugins/ace-editor.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/antisamy-markup-formatter.hpi -o /var/lib/jenkins/plugins/antisamy-markup-formatter.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/branch-api.hpi -o /var/lib/jenkins/plugins/branch-api.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/build-timeout.hpi -o /var/lib/jenkins/plugins/build-timeout.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/cloudbees-folder.hpi -o /var/lib/jenkins/plugins/cloudbees-folder.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/config-file-provider.hpi -o /var/lib/jenkins/plugins/config-file-provider.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/credentials.hpi -o /var/lib/jenkins/plugins/credentials.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/credentials-binding.hpi -o /var/lib/jenkins/plugins/credentials-binding.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/durable-task.hpi -o /var/lib/jenkins/plugins/durable-task.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/email-ext.hpi -o /var/lib/jenkins/plugins/email-ext.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/external-monitor-job.hpi -o /var/lib/jenkins/plugins/external-monitor-job.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/git.hpi -o /var/lib/jenkins/plugins/git.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/git-client.hpi -o /var/lib/jenkins/plugins/git-client.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/git-server.hpi -o /var/lib/jenkins/plugins/git-server.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/github.hpi -o /var/lib/jenkins/plugins/github.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/github-api.hpi -o /var/lib/jenkins/plugins/github-api.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/github-branch-source.hpi -o /var/lib/jenkins/plugins/github-branch-source.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/github-organization-folder.hpi -o /var/lib/jenkins/plugins/github-organization-folder.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/gradle.hpi -o /var/lib/jenkins/plugins/gradle.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/handlebars.hpi -o /var/lib/jenkins/plugins/handlebars.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/icon-shim.hpi -o /var/lib/jenkins/plugins/icon-shim.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/javadoc.hpi -o /var/lib/jenkins/plugins/javadoc.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/jquery-detached.hpi -o /var/lib/jenkins/plugins/jquery-detached.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/junit.hpi -o /var/lib/jenkins/plugins/junit.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/ldap.hpi -o /var/lib/jenkins/plugins/ldap.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/mailer.hpi -o /var/lib/jenkins/plugins/mailer.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/mapdb-api.hpi -o /var/lib/jenkins/plugins/mapdb-api.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/matrix-auth.hpi -o /var/lib/jenkins/plugins/matrix-auth.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/matrix-project.hpi -o /var/lib/jenkins/plugins/matrix-project.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/momentjs.hpi -o /var/lib/jenkins/plugins/momentjs.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/pam-auth.hpi -o /var/lib/jenkins/plugins/pam-auth.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/pipeline-build-step.hpi -o /var/lib/jenkins/plugins/pipeline-build-step.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/pipeline-input-step.hpi -o /var/lib/jenkins/plugins/pipeline-input-step.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/pipeline-rest-api.hpi -o /var/lib/jenkins/plugins/pipeline-rest-api.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/pipeline-stage-step.hpi -o /var/lib/jenkins/plugins/pipeline-stage-step.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/pipeline-stage-view.hpi -o /var/lib/jenkins/plugins/pipeline-stage-view.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/plain-credentials.hpi -o /var/lib/jenkins/plugins/plain-credentials.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/publish-over-ssh.hpi -o /var/lib/jenkins/plugins/publish-over-ssh.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/scm-api.hpi -o /var/lib/jenkins/plugins/scm-api.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/script-security.hpi -o /var/lib/jenkins/plugins/script-security.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/ssh-credentials.hpi -o /var/lib/jenkins/plugins/ssh-credentials.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/ssh-slaves.hpi -o /var/lib/jenkins/plugins/ssh-slaves.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/structs.hpi -o /var/lib/jenkins/plugins/structs.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/timestamper.hpi -o /var/lib/jenkins/plugins/timestamper.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/token-macro.hpi -o /var/lib/jenkins/plugins/token-macro.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/windows-slaves.hpi -o /var/lib/jenkins/plugins/windows-slaves.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/workflow-aggregator.hpi -o /var/lib/jenkins/plugins/workflow-aggregator.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/workflow-api.hpi -o /var/lib/jenkins/plugins/workflow-api.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/workflow-basic-steps.hpi -o /var/lib/jenkins/plugins/workflow-basic-steps.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/workflow-cps.hpi -o /var/lib/jenkins/plugins/workflow-cps.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/workflow-cps-global-lib.hpi -o /var/lib/jenkins/plugins/workflow-cps-global-lib.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/workflow-durable-task-step.hpi -o /var/lib/jenkins/plugins/workflow-durable-task-step.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/workflow-job.hpi -o /var/lib/jenkins/plugins/workflow-job.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/workflow-multibranch.hpi -o /var/lib/jenkins/plugins/workflow-multibranch.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/workflow-scm-step.hpi -o /var/lib/jenkins/plugins/workflow-scm-step.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/workflow-step-api.hpi -o /var/lib/jenkins/plugins/workflow-step-api.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/workflow-support.hpi -o /var/lib/jenkins/plugins/workflow-support.hpi'
    sudo su jenkins -c 'curl -sSL -f https://updates.jenkins.io/latest/ws-cleanup.hpi -o /var/lib/jenkins/plugins/ws-cleanup.hpi'

    # replace first true for <useSecurity>true</useSecurity> to <useSecurity>false</useSecurity>
    sudo su jenkins -c 'sed -i "0,/true/s,true,false," /var/lib/jenkins/config.xml'
    sudo service jenkins restart

  SHELL

  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
    sudo add-apt-repository -y "deb https://apt.dockerproject.org/repo ubuntu-$(lsb_release -s -c) main"
    sudo apt-get -y update
    sudo apt-get -y install docker-engine
    sudo usermod -a -G docker vagrant
    sudo usermod -a -G docker jenkins
    sudo su -c 'curl -L https://github.com/docker/compose/releases/download/1.7.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose'
    sudo chmod +x /usr/local/bin/docker-compose
  SHELL

  config.vm.provision "shell", inline: <<-SHELL
    sudo su vagrant -l -c 'wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.31.1/install.sh | bash'
    sudo su vagrant -l -c '. ~/.nvm/nvm.sh && nvm install v4.4.5 && nvm alias default v4.4.5 && npm install pm2 -g'

  SHELL

  config.vm.provision "shell", inline: <<-SHELL
    sudo su vagrant -c 'sudo apt-get install default-jre -y'
    sudo so vagrant -c 'sudo apt-get install default-jdk -y'
    sudo su vagrant -c 'git clone https://github.com/agileworks-tw/spring-boot-sample.git'
    sudo su vagrant -c 'mkdir workspace'
    sudo su vagrant -c 'mv spring-boot-sample/ workspace/'
  SHELL



end
