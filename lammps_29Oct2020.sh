export PATH=/appsnew/usr/cmake/cmake-3.14.3/bin:$PATH
source /appsnew/source/intel2018.sh

processor_num=`cat /proc/cpuinfo| grep "processor"| wc -l`
if [ ${processor_num} -eq 56 ] || [ $1 == 'cnnl' ] ; then
    export PATH=/home/liufeng_pkuhpc/lustre2/29Oct2020_lammps/build_almost/cnnl_install/bin:$PATH 
    source /home/liufeng_pkuhpc/lustre2/29Oct2020_lammps/build_almost/cnnl_build/etc/profile.d/lammps.sh
    echo 'lammps cnnl version'
elif [ ${processor_num} -eq 40 ] || [ $1 == 'cns' ]
    export PATH=/home/liufeng_pkuhpc/lustre2/29Oct2020_lammps/build_almost/cns_install/bin:$PATH 
    source /home/liufeng_pkuhpc/lustre2/29Oct2020_lammps/build_almost/cns_build/etc/profile.d/lammps.sh
    echo 'lammps cns version'
fi