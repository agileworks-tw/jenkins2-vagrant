exportVM:
	VBoxManage clonehd ~/VirtualBox\ VMs/agileworks-vm/box-disk1.vmdk cloned.vdi --format vdi
	VBoxManage clonehd cloned.vdi agileworks-vm.vmdk --format vmdk
	rm cloned.vdi
