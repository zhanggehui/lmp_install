export PATH=/appsnew/usr/cmake/cmake-3.14.3/bin:$PATH
source /appsnew/source/intel2018.sh

processor_num=`cat /proc/cpuinfo| grep "processor"| wc -l`
if [ $# -ge 1 ]; then    
    if [ $1 == 'cnnl' ]; then
        source /home/liufeng_pkuhpc/lustre2/zgh/zgh_lmp/lmp_install/lammps_cnnl.sh
    elif [ $1 == 'cns' ]; then
        source /home/liufeng_pkuhpc/lustre2/zgh/zgh_lmp/lmp_install/lammps_cns.sh
    else
        echo 'No such version!'
    fi
else 
    if [ ${processor_num} -eq 56 ]; then
        source /home/liufeng_pkuhpc/lustre2/zgh/zgh_lmp/lmp_install/lammps_cnnl.sh
    else
        source /home/liufeng_pkuhpc/lustre2/zgh/zgh_lmp/lmp_install/lammps_cns.sh
    fi
fi