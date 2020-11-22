source /appsnew/source/intel2018.sh

processor_num=`cat /proc/cpuinfo| grep "processor"| wc -l`
#echo $processor_num

if [ $# -ge 1]; then
    if [ $1 == cnnl ]; then
        export PATH=/home/liufeng_pkuhpc/lustre2/29Oct2020_lammps/build_almost/cnnl_install/bin:$PATH 
        source /home/liufeng_pkuhpc/lustre2/29Oct2020_lammps/build_almost/cnnl_build/etc/profile.d/lammps.sh
        echo 'lammps cnnl version'
    else
        export PATH=/home/liufeng_pkuhpc/lustre2/29Oct2020_lammps/build_almost/cns_install/bin:$PATH 
        source /home/liufeng_pkuhpc/lustre2/29Oct2020_lammps/build_almost/cns_build/etc/profile.d/lammps.sh
        echo 'lammps cns version'
    fi
else
    if [ ${processor_num} -eq 56 ] || [ ${processor_num} -eq 28 ]; then
        export PATH=/home/liufeng_pkuhpc/lustre2/29Oct2020_lammps/build_almost/cnnl_install/bin:$PATH 
        source /home/liufeng_pkuhpc/lustre2/29Oct2020_lammps/build_almost/cnnl_build/etc/profile.d/lammps.sh
        echo 'lammps cnnl version'
    else
        export PATH=/home/liufeng_pkuhpc/lustre2/29Oct2020_lammps/build_almost/cns_install/bin:$PATH 
        source /home/liufeng_pkuhpc/lustre2/29Oct2020_lammps/build_almost/cns_build/etc/profile.d/lammps.sh
        echo 'lammps cns version'
    fi
fi