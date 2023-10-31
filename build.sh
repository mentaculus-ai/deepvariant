#/bin/bash

NVIDIA_IMG="nvcr.io/nvidia/tensorflow:22.12-tf2-py3"
TF_USE="DV_USE_PREINSTALLED_TF=1"
GPU_BUILD="DV_GPU_BUILD=1"
TF_MKL="DV_USE_GCP_OPTIMIZED_TF_WHL=0"
TF_TAG="DV_CPP_TENSORFLOW_TAG=v2.11.0"
docker build --build-arg=FROM_IMAGE=${NVIDIA_IMG} \
             --build-arg=${GPU_BUILD} \
             --build-arg=${TF_USE} \
             --build-arg=${TF_MKL} \
             --build-arg=${TF_TAG} \
             -t deepvariant_gpu .
