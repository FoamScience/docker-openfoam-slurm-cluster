docker-slurm-cluster
====================

This is a demonstration of how the Slurm could be deployed in the docker infrastructure using docker compose.

It consist of the following services:
- MariaDB (for accounting data)
- head node (munge, slurmd, slurmctld, slurmdbd)
- compute node x4 (munge, slurmd)

The slurm version is `v21.08.8-2`

# How to deploy

Clone the repository

```
git clone https://github.com/FoamScience/docker-openfoam-slurm-cluster
cd docker-openfoam-slurm-cluster
```

Next, build the node image.
```
docker-compose build
```

Start the cluster

```
docker-compose up -d
```

To access the head node:

```
docker exec -it axc-headnode bash
```

NOTE: the first running of Slurm might take up to 1 minute because a new MariaDB database initiation procedure is sa bit slow.
