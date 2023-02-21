resource "oci_core_instance" "oracle_instance" {
    # Required
    availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
    compartment_id = "ocid1.tenancy.oc1..aaaaaaaawsxzbu2vklgd7l2xxy37c2jkjuzatx3r5dkcnnxbzl5k43l6azoq"
    shape = "VM.Standard.E2.1.Micro"
    source_details {
        source_id = "ocid1.image.oc1.ca-toronto-1.aaaaaaaahmuev2h4l3f6xowtovoez52iks7y6j56usuvoogfgvk77bj7qlsq"
        source_type = "image"
    }

    # Optional
    display_name = "nginx-01"
    create_vnic_details {
        assign_public_ip = true
        subnet_id = oci_core_subnet.vcn-public-subnet.id
    }
    metadata = {
        ssh_authorized_keys = file("~/.ssh/oci_dev.pub")
    } 
    preserve_boot_volume = false
}