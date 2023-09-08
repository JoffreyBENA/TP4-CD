#!/bin/bash

# Variables
PROJECT_ID="<your_project_id>"
ZONE="<your_zone>"
VM_NAME="my-vm-instance"

# SSH into the VM
gcloud compute ssh $VM_NAME --project $PROJECT_ID --zone $ZONE --command "<your_prepare_commands>"
