grep -P '^	' /tmp/error|sed -e "s#^	#$HOME/#"|xargs rm
