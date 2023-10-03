#!/bin/bash

# Variables
PROJECT_ID="<your_project_id>"
ZONE="<your_zone>"
MACHINE_TYPE="e2-small"
IMAGE_FAMILY="ubuntu-1804-lts"
IMAGE_PROJECT="ubuntu-os-cloud"
VM_NAME="my-vm-instance"

# Create VM instance
gcloud compute instances create $VM_NAME \
    --project $PROJECT_ID \
    --zone $ZONE \
    --machine-type $MACHINE_TYPE \
    --image-family $IMAGE_FAMILY \
    --image-project $IMAGE_PROJECT
