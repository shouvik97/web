#/bin/bash
function internsctl_memory_getinfo  {
       echo "### OS information ###"
       lsb_release -a

       echo
       echo "### Processor information ###"
       processor=`grep -wc "processor" /proc/cpuinfo`
       model=`grep -w "model name" /proc/cpuinfo  | awk -F: '{print $2}'`
       echo "Processor = $processor"
       echo "Model     = $model"
       echo
       echo "### Memory information ###"
       total=`grep -w "MemTotal" /proc/meminfo | awk '{print $2}'`
       free=`grep -w "MemFree" /proc/meminfo | awk '{print $2}'`
       echo "Total memory: $total kB"
       echo "Free memory : $free kB"
 }
