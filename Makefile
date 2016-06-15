exportVM:
	VBoxManage clonehd agileworks-vm.vmdk cloned.vdi --format vdi
	VBoxManage clonehd cloned.vdi agileworks-vm-min.vmdk --format vmdk
	rm box-disk1.vmdk
	rm cloned.vdi
