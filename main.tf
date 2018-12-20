module "dockeree-cluster" {
  source                  = "github.com/IGNW/terraform-vsphere-docker-ee"

  environment             = "lab"
  vsphere_server          = "tadcm0000275.apac.lab.corpintra.net"
  vsphere_datacenter      = "Lab.SG"
  vsphere_datastore       = "Lab-Storage"
  vsphere_compute_cluster = "Lab"
  vsphere_network         = "ICS-POC"
  disk_template           = "ubuntu16_dockeree_template"
  domain                  = "corpintra.net"
  manager_node_count      = "2"
  worker_node_count       = "1"
  dtr_node_count          = "2"
  vsphere_user            = "ticrall@apac"
  vsphere_password        = "${var.vsphere_password}"
  terraform_password      = "${var.terraform_password}"
  ucp_admin_password      = "${var.ucp_admin_password}"
}
