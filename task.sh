cd /scripts/task
LogTime=$(date "+%Y-%m-%d-%H-%M-%S")
LogFile="log/$1/${LogTime}.log"
node main.js $@ 2>&1 | tee ${LogFile}
