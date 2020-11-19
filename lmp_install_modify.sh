#!/bin/bash
cd /home/liufeng_pkuhpc/lustre2/lammps_modify/build_modify && \
rm -rf * && rm -rf ../install_modify

mv /home/liufeng_pkuhpc/lustre2/lammps_modify/src/MC/lmp_newatomswap/fix* \
/home/liufeng_pkuhpc/lustre2/lammps_modify/src/MC/

rm -rf /home/liufeng_pkuhpc/lustre2/lammps_modify/src/MC/lmp_newatomswap

#####
export PATH=/appsnew/usr/cmake/cmake-3.14.3/bin:$PATH
source /appsnew/source/intel2018.sh
source /appsnew/source/zlib-1.2.11.sh
source /appsnew/source/Python-3.7.3.sh
export CCFLAGS='-g -O3 -std=c++11'

# 42User_package 33Standard_package
cmake -DBUILD_MPI=yes -DBUILD_OMP=yes  \
-DCMAKE_C_COMPILER=icc -DCMAKE_CXX_COMPILER=icpc -DCMAKE_Fortran_COMPILER=ifort \
-DMPI_C_COMPILER=mpiicc -DMPI_CXX_COMPILER=mpiicpc \
\
-DFFT=mkl \
-DPKG_MC=yes \
-DCMAKE_INSTALL_PREFIX=../install_modify \
../cmake && make -j10 && make install

deactivate

currentdir=`pwd` 
cd /home/liufeng_pkuhpc/lustre2/lammps_modify/src/MC
git clone https://github.com/zhanggehui/lmp_newatomswap.git
cd $currentdir