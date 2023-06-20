<<<<<<< HEAD
# Shortcut creator 

# make b
# make d 

ohio:
	terraform init && terraform workspace new ohio || terraform workspace select ohio  &&  terraform apply -var-file regions/ohio.tfvars   -auto-approve

oregon:
	terraform init && terraform workspace new oregon || terraform workspace select oregon  &&  terraform apply -var-file regions/oregon.tfvars   -auto-approve

virginia:
	terraform init && terraform workspace new virginia || terraform workspace select virginia  &&  terraform apply -var-file regions/virginia.tfvars   -auto-approve

london:
	terraform init && terraform workspace new london || terraform workspace select london  &&  terraform apply -var-file regions/london.tfvars   -auto-approve


all:
	make ohio && make oregon && make virginia && make london




destroy-ohio:
	terraform init && terraform workspace new ohio || terraform workspace select ohio  &&  terraform destroy -var-file regions/ohio.tfvars   -auto-approve

destroy-oregon:
	terraform init && terraform workspace new oregon || terraform workspace select oregon  &&  terraform destroy -var-file regions/oregon.tfvars   -auto-approve

destroy-virginia:
	terraform init && terraform workspace new virginia || terraform workspace select virginia  &&  terraform destroy -var-file regions/virginia.tfvars   -auto-approve

destroy-london:
	terraform init && terraform workspace new london || terraform workspace select london  &&  terraform destroy -var-file regions/london.tfvars   -auto-approve

destroy-all:
	make destroy-ohio && make destroy-oregon && make destroy-virginia && make destroy-london
=======
build-taiwan:  
		terraform init && terraform workspace  new taiwan || terraform workspace select taiwan  &&  terraform apply -var-file envs/regions/asia-east1/asia-east1.tfvars -auto-approve


build-australia:  
		terraform init && terraform workspace new australia || terraform workspace select australia  &&  terraform apply -var-file envs/regions/australia-southeast1/australia-southeast1.tfvars -auto-approve

build-london:  
		terraform init && terraform workspace new london  || terraform workspace select london  &&  terraform apply -var-file envs/regions/europe-west2/europe-west2.tfvars -auto-approve

build-california: 
		terraform init && terraform workspace new california  || terraform workspace select california  && terraform apply -var-file envs/regions/us-west2/us-west2.tfvars -auto-approve



destroy-taiwan: 
		terraform workspace select taiwan && terraform destroy -var-file envs/regions/asia-east1/asia-east1.tfvars 


destroy-australia:
		terraform workspace select australia && terraform destroy -var-file envs/regions/australia-southeast1/australia-southeast1.tfvars 

destroy-london: 
		terraform workspace select london && terraform destroy -var-file envs/regions/europe-west2/europe-west2.tfvars 

destroy-california: 
		terraform workspace select california && terraform destroy -var-file envs/regions/us-west2/us-west2.tfvars
>>>>>>> 0d72326a98a19c1f2448c4042134758f2b8dd98e
