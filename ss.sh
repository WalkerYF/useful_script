config=/etc/shadowsocks/config.json
if [ "${1:0:4}" = "stop"  ]; then
	sudo sslocal -c $config -d stop
else
	sudo sslocal -c $config -d start
fi
