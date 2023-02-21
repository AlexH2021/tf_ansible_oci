resource "oci_identity_compartment" "tf-compartment" {
    #required
    compartment_id = "ocid1.tenancy.oc1..aaaaaaaawsxzbu2vklgd7l2xxy37c2jkjuzatx3r5dkcnnxbzl5k43l6azoq"
    description = "compartment for tf resources"
    name = "oci_tf_development"
}