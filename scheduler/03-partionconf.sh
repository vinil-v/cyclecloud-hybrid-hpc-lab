#!/bin/sh
# This script builds a partition configuration for D4sv5 based on the compute node details
# This is for Demonstration purposes only. Please modify as per your requirements.
# Author : Vinil Vadakkepurakkal
# Date : 26/11/2025
echo "NodeName=compute1 Feature=static CPUs=4 Boards=1 SocketsPerBoard=1 CoresPerSocket=2 ThreadsPerCore=2 RealMemory=15989" >> /etc/slurm/azure.conf
echo "PartitionName=onprem Nodes=compute1 Default=NO MaxTime=INFINITE State=UP">> /etc/slurm/azure.conf

#restart slurm to apply changes
scontrol reconfigure


