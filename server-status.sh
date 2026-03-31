echo "+---------------+";
echo "| Server Status |";
echo "+---------------+";
echo "";

echo "Total CPU Usage:";
CPU=$(top -bn1 | grep 'Cpu(s)' | sed 's/.*, *\([0-9.]*\)%* id.*/\1/' | awk '{print 100 - $1"%"}');
echo $CPU;
echo "=================";
echo "";

echo "Total RAM Usage";
RAM=$(free | grep Mem | awk '{print $3/$2 * 100.0}');
echo $RAM"%";
echo "=================";
echo "";

echo "Total Disk Usage";
DISK=$(df -h | grep '^/dev' | awk '{print $5}')
echo $DISK;
echo "=================";
echo "";

echo "Top 5 CPU Processes";
CPU_PROCESSES=$(ps aux --sort=-%cpu | head -n 6 | awk '{print $1, $2, $3, $4, $11}');
echo $CPU_PROCESSES;
echo "=================";
echo "";

echo "Top 5 RAM Processes";
RAM_PROCESSES=$(ps aux --sort=-%mem | head -n 6 | awk '{print $1, $2, $3, $4, $11}');
echo $RAM_PROCESSES;
echo "=================";