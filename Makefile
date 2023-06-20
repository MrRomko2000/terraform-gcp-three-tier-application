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
