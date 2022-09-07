# http://www.armadeus.org/wiki/index.php?title=Serial_ports_usage_on_Linux

# read configs
stty -F /dev/ttymxc0 speed
# 115200

# init & config
stty -F /dev/ttymxc0 115200
stty -F /dev/ttymxc0 raw -echo -echoe -echok

# write
echo "HELLO" > /dev/ttymxc0

# read
cat /dev/ttymxc0
