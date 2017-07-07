provider "xenserver" {
    url = "${var.xenserver_url}"
    username = "${var.xenserver_username}"
    password = "${var.xenserver_password}"
}
resource "xenserver_vm" "kube-coreos01" {
    name_label = "kube_coreos01"
    base_template_name = "coreos01"
    xenstore_data {
        hostname = "coreos01.realc.io"
        ip = "192.168.10.141"
    }
}
