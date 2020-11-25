source /appsnew/source/intel2018.sh

processor_num=`cat /proc/cpuinfo| grep "processor"| wc -l`
#echo $processor_num

if [ $# -ge 1 ] &&  [ $1 != auto ]; then
    if [ $1 == cnnl ]; then
        source /home/liufeng_pkuhpc/lustre2/zgh/zgh_lmp/lmp_use/lammps_cnnl.sh
    else
        source /home/liufeng_pkuhpc/lustre2/zgh/zgh_lmp/lmp_use/lammps_cns.sh
    fi
else
    if [ ${processor_num} -eq 56 ] || [ ${processor_num} -eq 28 ]; then
        source /home/liufeng_pkuhpc/lustre2/zgh/zgh_lmp/lmp_use/lammps_cnnl.sh
    else
        source /home/liufeng_pkuhpc/lustre2/zgh/zgh_lmp/lmp_use/lammps_cns.sh
    fi
fi