#!/bin/bash
#set -x
# https://www.atjiang.com/pragmatic-tmux-scripting-customized-envs/
name=http_proxy_nvm
fq_port=1087
ch_port=52342
remote_port=52341

status="ch"

tmux kill-session -t $name

while :
do



echo "mode $status !"

if [[ $status = "ch" ]]
then
    local_port=$ch_port
    status="fq"
elif [[ $status = "fq" ]]
then
    local_port=$fq_port
    status="ch"
elif [[ $status = "q" ]]
then
    exit
fi


# open an socks5 proxy on my laptop
# ssh -D ${local_port} localhost
# open an http proxy on my laptop (bug in macos)
# ncat -l ${local_port} --proxy-type http


tmux new-session -s $name -n editor -d
tmux split-window -v -t $name
tmux split-window -v -t $name
#tmux send-keys -t $name:0.0 'cd tools' C-m
#tmux send-keys -t $name:0.0 'cd v2ray-core' C-m
#tmux send-keys -t $name:0.0 './v2ray -c http_proxy.json' C-m
tmux send-keys -t $name:0.0 "ncat -l ${ch_port} --proxy-type http" C-m
tmux send-keys -t $name:0.1 "ssh -R ${remote_port}:localhost:${local_port} pm8" C-m
tmux send-keys -t $name:0.2 "ssh -R ${remote_port}:localhost:${local_port} pm9" C-m
#tmux split-window -v -t development
#tmux send-keys -t $name './v2ray -c http_proxy.conf' C-m
read -p "ok?" my_input
tmux kill-session -t $name
#tmux kill-session -t $name
sleep 0.2


if [[ ${my_input} = "q" ]]
then
    status="q"
fi



done