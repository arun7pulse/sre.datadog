terraform workspace list

terraform workspace new npd
terraform workspace select npd
terraform workspace list
terraform validate
terraform plan -var-file=env/npd/npd.auto.tfvars 
echo yes | terraform apply -var-file=env/npd/npd.auto.tfvars 

terraform workspace new prd
terraform workspace select prd
terraform workspace list
terraform validate
terraform plan -var-file=env/prd/prd.auto.tfvars 
echo yes | terraform apply -var-file=env/prd/prd.auto.tfvars 