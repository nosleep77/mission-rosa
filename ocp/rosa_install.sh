#!/bin/bash
set -ex

# Enable ROSA service from AWS console

#Pre-reqs
#Install and configure AWS Cli
#Install rosa and oc cli tools
#Set up rosa env var ROSA_TOKEN

# Best to run inside screen

rosa login
rosa verify permissions
rosa verify quota
rosa whoami
rosa init
rosa verify oc
rosa create cluster --cluster-name=$1 $2 --watch
rosa create admin --cluster=$1

# use this to check status of cluster
# rosa describe cluster --cluster=<cluster_name>

# Track the progress of the cluster creation
# rosa logs install --cluster=<cluster_name> --watch

# Create admin
# rosa create admin --cluster=<cluster_name>

# Login to cluster
#oc login https://api.cluster_name.t6k4.i1.oragnization.org:6443 \
#>  --username cluster-admin \
#>  --password FWGYL-2mkJI-3ZTTZ-rINns

# Check
# oc whoami

# Get console URL of cluster
# rosa describe cluster --cluster=<cluster_name>

# Add an identity provider (IDP)
# rosa create idp --cluster=<cluster_name> --type=<identity_provider> [arguments]
