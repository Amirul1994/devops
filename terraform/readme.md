terraform init - This command initializes a working directory containing Terraform configuration files. It downloads the necessary provider plugins and sets up the backend configuration. This step is essential before running other Terraform commands.

terraform plan - This command generates and shows an execution plan. It details what actions Terraform will take to reach the desired state specified in the configuration files. This is a dry run and does not make any changes to the infrastructure.

terraform apply - This command applies the changes required to reach the desired state of the configuration. It executes the actions outlined in the execution plan, which can include creating, updating, or deleting infrastructure resources.

terraform destroy - destroy the infra

.terraform folder - created when any plugin is initialized. If this folder get deleted, again use 'terraform init' command.

terraform.tfstate - keep the track of the state of the infrastructure. If any change has been made, compare it with this file and then apply the changes. After applying the changes, modify the file according to the changes. If this file is deleted, it will break terraform leading to a mismatch state.

terraform state list - The terraform state list command lists all the resources that Terraform is managing in the current state.

terraform state show - The terraform state show command is used to display detailed information about a specific resource in the Terraform state.

terraform state show <resource_address>
terraform state show aws_internet_gateway.gw

terraform destroy -target <resource_address>
terraform destroy -target aws_instance.web-server-instance 

terraform apply -target <resource_adress>
terraform apply -target aws_instance.web-server-instace

map() - In Terraform, the map() function is used to create a map from a set of key-value pairs.

lookup() - Returns the value of a specified key from a map, with an optional default value if the key is not found.

element() - Returns a single element from a list at a specified index, with optional wrapping behavior.

coalesce() - Returns the first non-null and non-empty value from a series of arguments.
    
coalescelist() - Returns the first non-empty list from a series of lists.