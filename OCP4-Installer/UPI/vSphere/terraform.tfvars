// ID identifying the cluster to create. Use your username so that resources created can be tracked back to you.
cluster_id = "ocp4"

// Domain of the cluster. This should be "${cluster_id}.${base_domain}".
cluster_domain = "ocp4.dpl.local"

// Base domain from which the cluster domain is a subdomain.
base_domain = "dpl.local"

// Name of the vSphere server. The dev cluster is on "vcsa.vmware.devcluster.openshift.com".
vsphere_server = "10.0.0.43"

// User on the vSphere server.
vsphere_user = "Administrator@vsphere.local"

// Password of the user on the vSphere server.
vsphere_password = "xxx"

// Name of the vSphere cluster. The dev cluster is "devel".
vsphere_cluster = "cluster-02"

// Name of the vSphere data center. The dev cluster is "dc1".
vsphere_datacenter = "new-vi-DC"

// Name of the vSphere data store to use for the VMs. The dev cluster uses "nvme-ds1".
vsphere_datastore = "cls2-vSanDatastore"

// Name of the VM template to clone to create VMs for the cluster. The dev cluster has a template named "rhcos-latest".
vm_template = "rhcos-4.7.7-x86_64-vmware.x86_64"
// vm_template = "rhcos-4.6.8-x86_64-vmware.x86_64"
vm_network = "ocp4-seg"
vm_dns_addresses = ["10.0.0.250"]

// The machine_cidr where IP addresses will be assigned for cluster nodes.
// Additionally, IPAM will assign IPs based on the network ID. 
machine_cidr = "172.27.0.0/24"

// The number of control plane VMs to create. Default is 3.
control_plane_count = 3

// The number of compute VMs to create. Default is 3.
compute_count = 3

// Set bootstrap_ip, control_plane_ip, and compute_ip if you want to use static
// IPs reserved someone else, rather than the IPAM server.

// The IP address to assign to the bootstrap VM.
bootstrap_ip_address = "172.27.0.100"

// The IP addresses to assign to the control plane VMs. The length of this list
// must match the value of control_plane_count.
control_plane_ip_addresses = ["172.27.0.10", "172.27.0.11", "172.27.0.12"]
// use these with no worker nodes
// control_plane_memory = "32768"
// control_plane_num_cpus = "8"
// The IP addresses to assign to the compute VMs. The length of this list must
// match the value of compute_count.
compute_ip_addresses = ["172.27.0.20", "172.27.0.21", "172.27.0.22"]
bootstrap_ignition_path = "/home/ipirva/ocp4/installer-files/installer/upi/vsphere/bootstrap.ign"
control_plane_ignition_path = "/home/ipirva/ocp4/installer-files/installer/upi/vsphere/master.ign"
compute_ignition_path = "/home/ipirva/ocp4/installer-files/installer/upi/vsphere/worker.ign"
