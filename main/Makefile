build-iowa:
	terraform workspace new iowa || terraform workspace select iowa && terraform init && terraform apply -var-file locations/us-central1/iowa.tfvars --auto-approve

destroy-iowa:
	terraform workspace new iowa || terraform workspace select iowa && terraform init && terraform destroy -var-file locations/us-central1/iowa.tfvars --auto-approve



build-hongkong:
	terraform workspace new hongkong || terraform workspace select hongkong && terraform init && terraform apply -var-file locations/asia-east2/hongkong.tfvars --auto-approve

destroy-hongkong:
	terraform workspace new hongkong || terraform workspace select hongkong && terraform init && terraform destroy -var-file locations/asia-east2/hongkong.tfvars --auto-approve



build-london:
	terraform workspace new london || terraform workspace select london && terraform init && terraform apply -var-file locations/europe-west2/london.tfvars --auto-approve

destroy-london:
	terraform workspace new london || terraform workspace select london && terraform init && terraform destroy -var-file locations/europe-west2/london.tfvars --auto-approve



build-tokyo:
	terraform workspace new tokyo || terraform workspace select tokyo && terraform init && terraform apply -var-file locations/asia-northeast1/tokyo.tfvars --auto-approve
	
destroy-tokyo:
	terraform workspace new tokyo || terraform workspace select tokyo && terraform init && terraform destroy -var-file locations/asia-northeast1/tokyo.tfvars --auto-approve

all:
	make iowa && make london && make tokyo && make hongkong


destroy-all:
	make destroy-iowa && make destroy-london && make destroy-tokyo && make destroy-hongkong
