#!/bin/bash
#SBATCH -J lmp_
#SBATCH -p cn-long
#SBATCH -N 4
#SBATCH --qos=liufengcnl
#SBATCH --ntasks-per-node=20
#SBATCH -o 1.out
#SBATCH -e 2.err
#SBATCH --no-requeue
#SBATCH -A liufeng_g1
#SBATCH --exclusive

hosts=`scontrol show hostname $SLURM_JOB_NODELIST`; echo $hosts

source /home/liufeng_pkuhpc/lustre2/zgh/zgh_lmp/lmp_install/lammps_29Oct2020.sh
#source /home/liufeng_pkuhpc/lustre2/zgh/zgh_lmp/lmp_install/lmp_install_modify.sh   #cns version

mpirun -np $SLURM_NTASKS lmp -in step4.2_annealing.inp