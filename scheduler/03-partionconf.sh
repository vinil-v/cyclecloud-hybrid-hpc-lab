#!/bin/sh
echo "PartitionName=onprem Nodes=compute1 State=UP Default=YES" >> /etc/slurm/azure.conf
echo "NodeName=compute1 CPUs=4 Boards=1 SocketsPerBoard=1 CoresPerSocket=2 ThreadsPerCore=2 RealMemory=15989" >> /etc/slurm/azure.conf